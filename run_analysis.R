#install.packages("plyr")  ## In case the plyr package is not installed, you can use this command

library(plyr)

setwd("~/Documents/Coursera/Data Science Specialization/Course 3/Week 4/UCI HAR Dataset")   ### set working directory that containg the unzip files

## TRAIN DATA SET CONSTRUCTION

## create two objet that cointains the activity labels and the features labels

actlab <- read.table("activity_labels.txt", col.names = c("activityCode", "activity")) 
features <- read.table("features.txt") 

setwd("./train")  ## accesing to train data directory 

## read the tables that contain subjects, activities and features for each case

subjecttrain <- read.table("subject_train.txt", col.names = "subject")
xtrain <- read.table("X_train.txt", col.names = as.character(features[,2]))
ytrain <- read.table("y_train.txt", col.names = "activityCode")

## Add an ID column that will be used to merge the previous data frames

nr <- nrow(xtrain)
subjecttrain$id <- 1:nr
ytrain$id <- 1:nr
xtrain$id <- 1:nr

## merge all the data frames for train data sets

traint <- join(subjecttrain,ytrain, by = "id")
traint <- join(traint,xtrain, by = "id")

## Arrange the colums to the set the ID column firts and only use only measurements on the mean and standard deviation

nc <- ncol(traint)
traint <- traint[c(2,1,3:nc)]
traint <- traint[c(1:3,grep("mean|std", names(traint)))]
traint <- traint[!grepl("meanFreq", names(traint))]

## Add a column that describes the activity for each observation using labels

traint <- arrange(merge(traint, actlab, by.x = "activityCode", by.y = "activityCode", all = TRUE), id)
nc <- ncol(traint)
traint <- traint[c(2,3,1,70, 4:(nc-1))]

## TEST DATA SET CONSTRUCTION

## Accesing to test data directory

setwd("../")
setwd("./test")  ## accesing to test data

## read the tables that contain subjects, activities and features for each case

subjecttest <- read.table("subject_test.txt", col.names = "subject")
xtest <- read.table("X_test.txt", col.names = as.character(features[,2]))
ytest <- read.table("y_test.txt", col.names = "activityCode")

## Add an ID column that will be used to merge the previous data frames

nr <- nrow(xtest)
subjecttest$id <- 1:nr
ytest$id <- 1:nr
xtest$id <- 1:nr

## merge all the data frames for train data sets

testt <- join(subjecttest,ytest, by = "id")
testt <- join(testt,xtest, by = "id")

## Arrange the colums to the set the ID column firts and only use only measurements on the mean and standard deviation

nc <- ncol(testt)
testt <- testt[c(2,1,3:nc)]
testt <- testt[c(1:3,grep("mean|std", names(testt)))]
testt <- testt[!grepl("meanFreq", names(testt))]

## Add a column that describes the activity for each observation using labels

testt <- arrange(merge(testt, actlab, by.x = "activityCode", by.y = "activityCode", all = TRUE), id)
nc <- ncol(testt)
testt <- testt[c(2,3,1,70, 4:(nc-1))]

## MERGE TRAIN AND TEST DATA SETS

tablet <- rbind(testt, traint)
tablet$subact <- as.numeric(paste(tablet$subject, tablet$activityCode, sep = ""))

## rearrenge colums

nc <- ncol(tablet)
tablet <- tablet[c(1, 2, 3, 4, 71, 5:(nc-1))]

## CREATE A NEW DATA SETS THAT CALCULATE MEAN BY ACTIVITY BY SUBJECT

tablet2 <- aggregate(tablet[, c(2, 3, 6:71)], list(tablet$subact), mean)
names(tablet2)[1] <- "SubjectActivity"
nc <- ncol(tablet2)
tablet2 <- tablet2[, c(2, 3, 1, 4:nc)]

## create a file for the new data set

setwd("../")
write.table(tablet2, file = "course4dataset.txt", sep = " ", row.name = FALSE)
