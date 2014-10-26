3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md.

The variables testX and trainX are the original data, augmented with columns labelling the kind of activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) as well as a number representing the test subject. 

mergedData combines the observations in these two datasets into one dataset.

FilteredData takes only the columns of mergedData that represent means and standard deviations of accelerometer and gyroscope measurements, as well as the Activity and Subject labels.

The data is described below:
"t" represents a time-domain variable.
"f" represents a frequency-domain variable.
"Body" refers to the subject.
"Gravity" refers to gravity signals.
"Acc" refers to accelerometer measurements.
"Gyro" refers to gyroscope measurements.
"Jerk" refers to the derivative of acceleration.
"Mag" refers to the Euclidean norm in X, Y, and Z.
"mean" refers to the mean value.
"std" refers to the standard deviation.

summarizedTbl refers to the mean of each measurement, grouped by subject and activity.