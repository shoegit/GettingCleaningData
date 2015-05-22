---
title: "README"
output: html_document
---

This script is submitted for the Course Project for Getting and Cleaning Data. 

Instructions:
Download the 'run_analysis.R' script into the "UCI HAR Dataset folder" that was unzipped and has the two subfolders "test" and "train".

Set the working directory to the folder described above



The steps in 'run_analysis.R' are as follows:

1. From the "test" folder, extracts the data about 
    a) which subject was tested (subject_test.txt)
    b) which activity was recorded (y_test.txt)
    c) measurement values for each subject and activity (X_test.txt)

```{r}
#1 Merging the training and the test sets to create one data set.
# first get all test data
testData<-read.table("./test/X_test.txt")  		# read the test data
testSubject<-read.table("./test/subject_test.txt")	# reads test subjects
testYlabels<-read.table("./test/y_test.txt")		# read test activities

```

2. The data (a) (b) and (c) above are combined using cbind()
```{r}
subjectTestData<-cbind(testSubject, testYlabels, testData) #combine all test data
(294
```

3. Similarly, get the data from the "train" folder and cbind()

4. Now we have two sets of data which have the same set of columns, but different number of rows.
 We are required to merge these two so we have to use rbind() which appends one set to the other.
```{r}
#Now combine test and training data into one data set.
allData<-rbind(subjectTestData, subjectTrainData)
```

5. The columns are renamed using the names from the "features.txt" file
```{r}
names(allData)[1]<-"Subject"  				# set column header
names(allData)[2]<-"ActivityNo"

featurelist<-read.table("./features.txt")
featurenames<-featurelist[2]					# get the feature names
names(allData)[3:563]<-t(featurenames)				#set the feature names as column 
```

6. Summary of the combined data:
> str(allData)
'data.frame':  10299 obs. of  563 variables:
 $ Subject                             : int  2 2 2 2 2 2 2 2 2 2 ...
 $ ActivityNo                          : int  5 5 5 5 5 5 5 5 5 5 ...
 $ tBodyAcc-mean()-X                   : num  0.257 0.286 0.275 0.27 0.275 ...
 $ tBodyAcc-mean()-Y                   : num  -0.0233 -0.0132 -0.0261 -0.0326 -0.0278 ...
 $ tBodyAcc-mean()-Z                   : num  -0.0147 -0.1191 -0.1182 -0.1175 -0.1295 ...
 $ tBodyAcc-std()-X                    : num  -0.938 -0.975 -0.994 -0.995 -0.994 ...
 $ tBodyAcc-std()-Y                    : num  -0.92 -0.967 -0.97 -0.973 -0.967 ...
 $ tBodyAcc-std()-Z                    : num  -0.668 -0.945 -0.963 -0.967 -0.978 ...
 $ tBodyAcc-mad()-X                    : num  -0.953 -0.987 -0.994 -0.995 -0.994 ...
 $ tBodyAcc-mad()-Y                    : num  -0.925 -0.968 -0.971 -0.974 -0.966 ...
 etc
 
7. We are required to extract only measurements of mean and std deviation, so using grep():
```{r}
reqData<-allData[,c(1,2,grep(pattern="-mean()",names(allData),fixed=TRUE),grep(pattern="-std()",names(allData),fixed=TRUE))]
```

8. We also want to change the activity no to the actual activity names, which are stored in "activity_labels.txt" file
```{r}
activities<-read.table("./activity_labels.txt")  	# read activity lookup table
reqData$Activity<-activities[match(reqData$ActivityNo, activities$V1), 2]
reqData<-reqData[,c(1,69,3:68)]				#replace activityNo with activity name
```

9. We were also asked to change the variable names but I don't think they are necessary to be changed as the descriptions would be too complex to write in a comprehensible and descriptive name. Some of them I do believe were errors, such as 'fBodyBodyGyroJerkMag-mean()' as this name is not listed in "features_info.txt", so I removed the extra occurrence of "Body". Renaming seems to be easier using **dplyr** so at this point I started using the **dplyr** package.
```{r}
library(dplyr)  				# need to use dplyr for this and step 5
dt<-tbl_df(reqData)				# change to a table
dt<-rename (dt, `fBodyAccJerkMag-mean()` = `fBodyBodyAccJerkMag-mean()`)
```

10. Finally to create the summary data by activity and subject. I found this was easiest using **dplyr** also, as it could perform group_by and summarise_each.
```{r}
summary <- dt %>% group_by(Activity, Subject) %>% summarise_each(funs(mean))
View(summary)
```


