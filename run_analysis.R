## Preparation: Loading libraries and data
library(curl)
library(dplyr)
library(tidyr)
library(sqldf)
library(lubridate)
library(data.table)


setwd("C:/Users/Alvaro/Desktop/APR/Economía/Data Science/GettingCleaning")
wd<-getwd()
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if (!file.exists(wd)) {
  dir.create(wd)
}
download.file(fileurl, file.path(wd, "Dataset.zip"))

zipfile<-"dataset.zip"
outdir<-"dataset"
unzip(zipfile,exdir=outdir)

setwd("C:/Users/Alvaro/Desktop/APR/Economía/Data Science/GettingCleaning/dataset/UCI HAR Dataset")
subject_train = read.table(file.path(getwd(),'train/subject_train.txt'),header=FALSE)
x_train = read.table(file.path(getwd(),'train/x_train.txt'),header=FALSE)
y_train = read.table(file.path(getwd(),'train/y_train.txt'),header=FALSE)

subject_test = read.table(file.path(getwd(),'test/subject_test.txt'),header=FALSE)
x_test = read.table(file.path(getwd(),'test/x_test.txt'),header=FALSE)
y_test = read.table(file.path(getwd(),'test/y_test.txt'),header=FALSE)


## 1 Merges the training and the test sets to create one data set.

dtsubject<-rbind(subject_train,subject_test)
setnames(dtsubject, "V1", "subject")

dtactivity<-rbind(y_train,y_test)
setnames(dtactivity, "V1", "activity")

dtobserved<-rbind(x_train,x_test)

dtfull<-cbind(dtsubject, dtactivity, dtobserved)

## 2 Extracts only the measurements on the mean and standard deviation for each measurement.

features = read.table(file.path(getwd(),'features.txt'),header=FALSE)
features <-cbind(features, paste0("V",features$V1))
setnames(features,c("number","feat","featcode"))

setnames(dtfull, c("subject","activity",as.character(features$feat)))

relevant<-features[grepl("[m][e][a][n]|[s][t][d]",features$feat)==1,]
relevant<-relevant[,"feat"]
relevantcol<-c("subject","activity",paste0(relevant))
subset1<-dtfull[,names(dtfull) %in% relevantcol==1]

## 3 Uses descriptive activity names to name the activities in the data set

activitylabel = read.table(file.path(getwd(),'activity_labels.txt'),header=FALSE)
setnames(activitylabel,c("activity","activitylabel"))
subset2<-sqldf("select activitylabel, s.*
               from subset1 s
               inner join activitylabel a on a.activity=s.activity")

## 4 Appropriately labels the data set with descriptive variable names.

names(subset2) <- make.names(names(subset2))
names(subset2) <- gsub('Acc',"Acceleration",names(subset2))
names(subset2) <- gsub('Mag',"Magnitude",names(subset2))
names(subset2) <- gsub('^t',"Time.",names(subset2))
names(subset2) <- gsub('^f',"Frequency.",names(subset2))
names(subset2) <- gsub('\\.mean',".Mean",names(subset2))
names(subset2) <- gsub('\\.std',".StandardDeviation",names(subset2))
names(subset2) <- gsub('Freq\\.',"Frequency.",names(subset2))
names(subset2) <- gsub('Freq$',"Frequency",names(subset2))

## 5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

subset3<-aggregate(. ~subject + activitylabel, subset2, mean)
write.table(subset3, file ="tidydata.txt",row.name=FALSE)