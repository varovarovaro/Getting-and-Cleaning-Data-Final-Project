# Getting-and-Cleaning-Data-Final-Project
This repository contains all the relevant information to correct the final project of Coursera´s "Getting and Cleaning Data" course.

## How to run the code
1. The first step is to open run_analysis.R
2. Then it is necessary to change the working directory in lines 10 and 22.
3. Finally, run the code.

## The run_analysis.R file
This file includes six sections.
* The goal of section zero is preparing the field. After loading all the necessary packages and files, we are ready to work. The preparation of the tables involves downloading a zipped folder with several tables, the unzipping of this folder and uploading the relevant tables into R.
* Section 1 merges the training and the test sets to create one data set. It also changes column names for clarity.
* Section 2 allows us to discard all the variables that are not neccesary. The "relevantcol" vector is created in order to do that. It stores all the variable names that includes the keywords "mean" or "std".
* The third section adds a column with activity names.
* The next section appropriately labels the data set with descriptive variable names. This is done through substitution of abbreviated words in exchange to its full word.
* The last step creates and independent and tidy dataset with the mean value of each variable per subject and activity combination.
