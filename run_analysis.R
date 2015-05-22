# This file creates a summary of the training and test mean values for the Human Activity Recognition Data

#1 Merging the training and the test sets to create one data set.
# first get all test data
testData<-read.table("./test/X_test.txt")			# read the test data
testSubject<-read.table("./test/subject_test.txt")	# reads test subjects
testYlabels<-read.table("./test/y_test.txt")		# read test activities
subjectTestData<-cbind(testSubject, testYlabels, testData) #combine all test data


# similarly get all training data
trainData<-read.table("./train/X_train.txt")		# read the training data
trainSubject<-read.table("./train/subject_train.txt")	# reads the subject numbers
trainYlabels<-read.table("./train/y_train.txt")		# actual activity performed
subjectTrainData<-cbind(trainSubject, trainYlabels, trainData) #combine all training data

#Now combine test and training data into one data set.
allData<-rbind(subjectTestData, subjectTrainData)



#2 Extracts only the measurements on the mean and standard deviation for each measurement. 
#extract only the means alind std dev
names(allData)[1]<-"Subject"					# set column header
names(allData)[2]<-"ActivityNo"

featurelist<-read.table("./features.txt")
featurenames<-featurelist[2]					# get the feature names
names(allData)[3:563]<-t(featurenames)				#set the feature names as column 

reqData<-allData[,c(1,2,grep(pattern="-mean()",names(allData),fixed=TRUE),grep(pattern="-std()",names(allData),fixed=TRUE))]


#3 Uses descriptive activity names to name the activities in the data set
# lookup activity
activities<-read.table("./activity_labels.txt")		# read activity lookup table
reqData$Activity<-activities[match(reqData$ActivityNo, activities$V1), 2]
reqData<-reqData[,c(1,69,3:68)]				#replace activityNo with activity name

#4 Appropriately labels the data set with descriptive variable names. 
# This was already done in Step 2 but need to correct some of the variable names
library(dplyr)					# need to use dplyr for this and step 5
dt<-tbl_df(reqData)				# change to a table
dt<-rename (dt, `fBodyAccJerkMag-mean()` = `fBodyBodyAccJerkMag-mean()`)
dt<-rename (dt, `fBodyGyroMag-mean()` = `fBodyBodyGyroMag-mean()`)
dt<-rename (dt, `fBodyGyroJerkMag-mean()` = `fBodyBodyGyroJerkMag-mean()`)
dt<-rename (dt, `fBodyAccJerkMag-std()` = `fBodyBodyAccJerkMag-std()`)
dt<-rename (dt, `fBodyGyroMag-std()` = `fBodyBodyGyroMag-std()`)
dt<-rename (dt, `fBodyGyroJerkMag-std()` = `fBodyBodyGyroJerkMag-std()`)

#5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
summary <- dt %>% group_by(Activity, Subject) %>% summarise_each(funs(mean))
View(summary)

# write the text file
write.table(summary, "summary.txt", row.names=FALSE)
