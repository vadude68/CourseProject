# CourseProject

Project for Getting and Cleaning Data, including run_analysis.R.

##How run_analysis.R Works

* Reads in data from the test dataset
* Extracts columns that use either the mean() or std() function
* Loads features data and assigns these features as the variable names
* Converts the variable names to all lower case and removes dashes and parentheses
* Binds the subject and activity columns to the other extracted columns
* Repeats the process for the training dataset and binds the two sets into one
* Pastes "mean" to all variable names except subject and activity
* Builds the finished dataset row by row, finding the mean of each variable for each of the thirty subjects and six activities
* Assigns the newly constructed "mean" variable names to the finished dataset
