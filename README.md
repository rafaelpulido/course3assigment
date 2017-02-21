#TRAIN-DATA SET CONSTRUCTION IN R

##This code creates a data set from the Human Activity Recognition Using Smartphones Dataset.

##The files that used for this construction are:

* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.
* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

##The general steps that are executed by this file on the train and test data bases are:

* Creating two objets that contains the activity labels and the features labels.
* Reading the tables that contain subjects, activities and features for each case.
* Adding an ID column that will be used to merge the data frames.
* Merging all the data frames for train data sets.
* Extracting only measurements on the mean and standard deviation.
* Add a column that describes the activity for each observation using labels.

##Then merges both data sets and create a new data set that calculate the mean by activity and subject

##References:

### [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human. Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector ###Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
