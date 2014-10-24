ReadMe.md
Read-me file for the method run_analysis.R, the course project in the Coursera course
Getting and Cleaning data. 
The method requires the dplyr package. 


The method reads data collected from the accelerometers 
from the Samsung Galaxy S smartphone, stored in the folder UCI HAR Dataset. 
This dataset is split up into a training set and a test set. 
Each containing repeated observations of 30 different subjects 
performing 6 different activities. Each observation contains 561 features
The output is a data set containing the mean of a subset of the features, grouped by
activity and subject. 

Step 1. Merging the test data and training data into one data set. 
Rows 9-29 read the data from text files using the read.table method. Labels for each activity
and each subject are added as variables at the right side of the data set (right join).
Same procedure is repeated for the test set and the training set, which then are merged into 
one data set, named mergetesttrain, using rbind. At the end of this step, in rows 32-37,
the variable names (i.e. feature names) are read from features.txt to be used as column names
in the data set mergetesttrain.

Step 2. Extracting a subset of the features containing mean and standard deviation for 
different measurements. The features consist of a number of different transformations of
time signals (and their Fourier transformed counterparts in the frequency domain). 
Here, we are extracting a subset of the features containing mean and standard deviation
of these signals. These features are the ones whose variable names contain -mean() or -std(). 
The weighted average of the frequency components in a sample are not included, 
nor are the features obtained by averaging the signals in a signal window sample.
This excludes the features measuring meanFreq or Gravity mean. 
Row 47 selects the desired features, along with subject and activity labels, using the 
select method from the plyr package. The result is stored in the data set testtrainmeanstd.

Step 3. Use descriptive activity names to name the activities in the data set.
The activity labels, stored in the activity column of the data set, are numbered 1-6.
The actual names of the activities are provided in the text file activity_labels.txt
Rows 52-56 read the activity names from the text file, and replaces the activity numbers
in the data set with the activity names using gsub.

Step 4.  Appropriately label the data set with descriptive variable names.
In this step, the current variable names, obtained from the features.txt textfile, are
made more descriptive by expanding some of the abbreviations (e.g. t -> time, f -> frequency, 
mag -> magnitude), after converting the names to lower case. Dashes and parentheses are also
removed. Rows 62-77 performs this step using the gsub method. 

Step 5. Producing the output, a tidy data set containing the average of each feature for each
subject and activity. This step is readily done using methods from the dplyr package. 
First, the data set testtrainmeanstd is grouped by activity and subject. Then the method 
summarise_each summarises each of the variables grouped by subject and activity by taking the mean. This is done in rows 84-88. Finally, the output is written to a text file "tidy.txt"