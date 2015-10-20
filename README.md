## README for run_analysis

Tidying data for Human Activity Recognition by Smartphone data (Course Project - Getting and Cleaning Data). Wide format as presented is specifically allowed.

HOW TO LOAD OUTPUT TABLE OF DATA
You can open the link with read.table or use the code below in R (modified from David Hood at https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/) 

```address <- "https://s3.amazonaws.com/coursera-uploads/user-6805cb25b9904c7602acaf9f/975117/asst-3/70dfa760729411e59aa10b716cda831a.txt"  
address <- sub("^https", "http", address)  
samsung.data <- read.table(url(address), header = TRUE)  
View(samsung.data)```  

run_analysis works with data from the Human Activity Recognition research based on using Smartphone data.

This project fulfills the requirements for the Course Project in Getting and Cleaning Data.

The R script (`run_analysis.R`)is designed so that if you have the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip in your working directory, the script will be able to complete the various tasks and return a text file with the summarised (means of each mean and standard deviation by student and activity).

More details on the data are available through http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

See `Codebook.txt` for an explanation of the variables, activities and the subjects (people) in the data.