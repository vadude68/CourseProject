#Code Book

##General Information

This dataset was created from the Human Activity Recognition Using Smartphones Data Set.  The HARUSDS measures thirty subjects performing six different activities.  It includes 561 variables--various measurements and calculations of the motions that the smart phone records during the activities.

This dataset has used only those variables for which the mean or standard deviation functions have been performed, as indicated by either "mean()" or "std()" in the variable name.  It then calculated the mean for each of these variables, for each subject and activity.  While the dataset looks somewhat messy in a text file, it will appear quite tidy after being loaded into R with read.table.

The HARUSDS was split into several different datasets.  The current dataset has combined information from the original datasets into one and ordered the data by subject and activity numbers.

##Activities

The activity data correspond to the following activities(same as in HARUSDS):

1 Walking
2 Walking Upstairs
3 Walking Downstairs
4 Sitting
5 Standing
6 Laying

##Variables

The "subject" variable refers to one of the thrity subjects studied.  The "activity" variable refers to one of the six activities listed above. The other variable names derive from the variables in the HARUSDS, with the prefix "mean" added.  Though the variable names do not always seem easily understandable to a layman, they are highly descriptive of a particular measurement or motion and thus meaningful to people who will use this data for further study. The HARUSDS variables have also been made easier to work with--upper case letters have been changed to lower case, and dashes and parentheses have been removed. The following are the 68 variables in this dataset:

subject
activity
meantbodyaccmeanx
meantbodyaccmeany
meantbodyaccmeanz
meantbodyaccstdx
meantbodyaccstdy
meantbodyaccstdz
meantgravityaccmeanx
meantgravityaccmeany
meantgravityaccmeanz
meantgravityaccstdx
meantgravityaccstdy
meantgravityaccstdz
meantbodyaccjerkmeanx
meantbodyaccjerkmeany
meantbodyaccjerkmeanz
meantbodyaccjerkstdx
meantbodyaccjerkstdy
meantbodyaccjerkstdz
meantbodygyromeanx
meantbodygyromeany
meantbodygyromeanz
meantbodygyrostdx
meantbodygyrostdy
meantbodygyrostdz
meantbodygyrojerkmeanx
meantbodygyrojerkmeany
meantbodygyrojerkmeanz
meantbodygyrojerkstdx
meantbodygyrojerkstdy
meantbodygyrojerkstdz
meantbodyaccmagmean
meantbodyaccmagstd
meantgravityaccmagmean
meantgravityaccmagstd
meantbodyaccjerkmagmean
meantbodyaccjerkmagstd
meantbodygyromagmean
meantbodygyromagstd
meantbodygyrojerkmagmean
meantbodygyrojerkmagstd
meanfbodyaccmeanx
meanfbodyaccmeany
meanfbodyaccmeanz
meanfbodyaccstdx
meanfbodyaccstdy
meanfbodyaccstdz
meanfbodyaccjerkmeanx
meanfbodyaccjerkmeany
meanfbodyaccjerkmeanz
meanfbodyaccjerkstdx
meanfbodyaccjerkstdy
meanfbodyaccjerkstdz
meanfbodygyromeanx
meanfbodygyromeany
meanfbodygyromeanz
meanfbodygyrostdx
meanfbodygyrostdy
meanfbodygyrostdz
meanfbodyaccmagmean
meanfbodyaccmagstd
meanfbodybodyaccjerkmagmean
meanfbodybodyaccjerkmagstd
meanfbodybodygyromagmean
meanfbodybodygyromagstd
meanfbodybodygyrojerkmagmean
meanfbodybodygyrojerkmagstd