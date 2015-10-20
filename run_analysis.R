#1 Merges the training and the test sets to create one data set.
#2 Extracts only the measurements on the mean and standard deviation for each measurement. 
#3 Uses descriptive activity names to name the activities in the data set
#4 Appropriately labels the data set with descriptive variable names. 
#5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# 1. Import data and merge
test_subject <- read.table("test/subject_test.txt") # Test subjects
X_test <- read.table("test/X_test.txt") # Main data for test subjects
y_test <- read.table("test/y_test.txt") # Activity
X_test <- cbind(test_subject, y_test, X_test) # match ID, activity, data 

train_subject <- read.table("train/subject_train.txt")
X_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
X_train <- cbind(train_subject, y_train, X_train) # match ID, activity, data 

body.df <- rbind(X_test, X_train)

# Name and Select Columns of Interest
features <- read.table("features.txt")
names(body.df) <- c("subjectid", "activity", as.character(features$V2))
# 2. Select mean and standard deviation (std) columns
mean.std.columns <- grep(c("mean|std"), names(body.df), ignore.case = TRUE)
mean.sd.body.df <- body.df[, c(1, 2, mean.std.columns)]

# 3. Descriptive Activity names
activity_labels <- read.table("activity_labels.txt")
activity_labels$V2 <- tolower(gsub("_", "", activity_labels$V2))
mean.sd.body.df[, "activity"] <- factor(mean.sd.body.df[, "activity"],
                                        levels = 1:6, labels = activity_labels$V2)

# 4. Variable names to conform to CodeBook.md, lower case, descriptive,
#    no symbols
names(mean.sd.body.df) <- tolower(gsub("-|\\(|\\)|,", "", names(mean.sd.body.df)))
names(mean.sd.body.df) <- gsub("acc", "accel", names(mean.sd.body.df))
names(mean.sd.body.df) <- gsub("^f", "frequency", names(mean.sd.body.df))
names(mean.sd.body.df) <- gsub("^t", "time", names(mean.sd.body.df))
names(mean.sd.body.df) <- gsub("^anglet", "angletime", names(mean.sd.body.df))
names(mean.sd.body.df) <- gsub("bodybody", "body", names(mean.sd.body.df))

# 5. New data frame with means of each variable by subject ID and activity
library(plyr)
run_analysis.df <- ddply(mean.sd.body.df, .(subjectid, activity),
                         numcolwise(mean))
# Write output table NOTE: Wide format as presented is specifically allowed
write.table(run_analysis.df, "run_analysis.txt", row.names = FALSE)