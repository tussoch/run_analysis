##CodeBook for run_analysis

The `run_analysis.R` script (the script) produces the `run_analysis.txt` file that contains a tidy dataframe in wide format (wide format is specifically allowed in the course project directions: "Either a wide or a long form of the data is acceptable ...").

The data were taken from files in https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip namely:
- `X_test.txt` and `X_train.txt` for the data points of test and train group people. These two groups were randomly assigned by the original researchers and are pooled in the script.
- `Y_test.txt` and `Y_train.txt` were used to assign the subject (people) ID's to each of the rows of the data points.
- Descriptive column names were assigned including the modification of the original researchers variable names from 'features.txt'.  


### In column order, the variables presented are

**subject_ID** : Identifying each of 30 people (numbered 1 to 30) performing each of six activities and having movement measured

**activity** : Six activities performed by each person. Descriptive activity names are in the dataframe. A video to shw each activity is available at https://www.youtube.com/watch?v=XOEN9W05_4A
- walking = walking on flat surface
- walkingupstairs = walking up stairs 
- walkingdownstairs = walking down stairs
- sitting = seated position
- standing = standing still
- laying = lying down horizontally on platform

### Features (remaining columns)
The remaining variables are termed "Features" of the collected data from Samsung Galaxy SII phones worn on the waist of the subjects.

A major requirement of the assignment was to provide **Descriptive** variable names that conform to tidy data principles. The names given here have descriptive value in that full words rather than abbreviations are used except in simple cases such as std (common abbreviation for the otherwise long term standard deviation), accel (as an improvement over acc as a more obvious abbreviation for the otherwise very long word acceleration), mag (for magnitude), gyros (for gyroscope) and freqmean (for frequency mean). 

A modified description of the features based on the initial researchers text (see http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) follows:
"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals" (timeacc x, y and z and timegyro x, y and z)."

Time domain signals are prefixed with 'time' were captured at a constant rate of 50 Hz. "Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals."
timebodyaccel x, y and z and timegravityaccel x, y, and z) were measured using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

"Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals..." (timebodyacceljerk X,Y Z and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm..." (timebodyaccelmag, timegravityaccelmag, timebodyacceljerkmag, timebodygyromag, timebodygyrojerkmag). 

"Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing..." frequencybodyacc x, y and z, frequencybodyacceljerk x, y and z, frequencybodyacceljerkmag, frequencybodygyromag, frequencybodygyrojerkmag. (Note 'frequency' prefix indicates frequency domain signals). 

"These signals were used to estimate variables of the feature vector for each pattern:" 'x, y or z' suffixes denote 3-axial signals in X, Y and Z directions respectively.

All values presented are the means based on subject and activity. Some of the summarised data are from means (indicated by mean in the descriptive variable name), mean frequencies ("weighted average of the frequency components to obtain a mean frequency" indicated by meanfreq in the descriptive variable name) and some are standard deviations (indicated by the common abbreviation std in the descriptive variable name). 

"Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:" and are indicated by an "angle" prefix. These are the last seven variables listed below.

A full list is features resented is thus:

timebodyaccelmeanx
timebodyaccelmeany
timebodyaccelmeanz
timebodyaccelstdx
timebodyaccelstdy
timebodyaccelstdz
timegravityaccelmeanx
timegravityaccelmeany
timegravityaccelmeanz
timegravityaccelstdx
timegravityaccelstdy
timegravityaccelstdz
timebodyacceljerkmeanx
timebodyacceljerkmeany
timebodyacceljerkmeanz
timebodyacceljerkstdx
timebodyacceljerkstdy
timebodyacceljerkstdz
timebodygyromeanx
timebodygyromeany
timebodygyromeanz
timebodygyrostdx
timebodygyrostdy
timebodygyrostdz
timebodygyrojerkmeanx
timebodygyrojerkmeany
timebodygyrojerkmeanz
timebodygyrojerkstdx
timebodygyrojerkstdy
timebodygyrojerkstdz
timebodyaccelmagmean
timebodyaccelmagstd
timegravityaccelmagmean
timegravityaccelmagstd
timebodyacceljerkmagmean
timebodyacceljerkmagstd
timebodygyromagmean
timebodygyromagstd
timebodygyrojerkmagmean
timebodygyrojerkmagstd
frequencybodyaccelmeanx
frequencybodyaccelmeany
frequencybodyaccelmeanz
frequencybodyaccelstdx
frequencybodyaccelstdy
frequencybodyaccelstdz
frequencybodyaccelmeanfreqx
frequencybodyaccelmeanfreqy
frequencybodyaccelmeanfreqz
frequencybodyacceljerkmeanx
frequencybodyacceljerkmeany
frequencybodyacceljerkmeanz
frequencybodyacceljerkstdx
frequencybodyacceljerkstdy
frequencybodyacceljerkstdz
frequencybodyacceljerkmeanfreqx
frequencybodyacceljerkmeanfreqy
frequencybodyacceljerkmeanfreqz
frequencybodygyromeanx
frequencybodygyromeany
frequencybodygyromeanz
frequencybodygyrostdx 
frequencybodygyrostdy
frequencybodygyrostdz
frequencybodygyromeanfreqx 
frequencybodygyromeanfreqy 
frequencybodygyromeanfreqz 
frequencybodyaccelmagmean
frequencybodyaccelmagstd
frequencybodyaccelmagmeanfreq
frequencybodyacceljerkmagmean 
frequencybodyacceljerkmagstd
frequencybodyacceljerkmagmeanfreq
frequencybodygyromagmean
frequencybodygyromagstd
frequencybodygyromagmeanfreq
frequencybodygyrojerkmagmean
frequencybodygyrojerkmagstd
frequencybodygyrojerkmagmeanfreq 

angletimebodyaccelmeangravity
angletimebodyacceljerkmeangravitymean
angletimebodygyromeangravitymean
angletimebodygyrojerkmeangravitymean
anglexgravitymean 
angleygravitymean
anglezgravitymean