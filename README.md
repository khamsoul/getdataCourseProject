getdataCourseProject
====================
This document explains the steps taken in run_analysis.R to generate a tidy dataset.
Lines 1-6 read in the test and training data.
Lines 7-11 read in the feature labels, activity labels, and subject number.
Lines 12-17 merge the activity and subject labels to the test data
Lines 18-21 merges the test and training data into one dataset.
Lines 22-25 selects only variables that are means or standard deviations, or the subject and activity labels.
Because the original variable names are already descriptive, they satisfy Q4. Also, it preserves
continuity between the tidy and original dataset.
Lines 26-32 group the merged dataset into groups of Activity and Subject. Calling summarise_each
on this grouped data set returns the average for the variables when Activity and Subject are constant.