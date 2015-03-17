## access necessary packages
library(dplyr)

## load raw data files for the test data and assign them to variables

testdata <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
testactivitydata <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")
testsubjectdata <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")

## extract columns that contain mean and sd measurements

selectdata <- select(testdata, c(V1:V6, V41:V46, V81:V86, V121:V126, V161:V166, V201:V202, V214:V215, V227:V228, V240:V241, V253:V254, V266:V271, V345:V350, V424:V429, V503:V504, V516:V517, V529:V530, V542:V543))

##load features and assign them as the variable names

features <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/features.txt")
splitNames <- strsplit(names(selectdata), "V")
secondElement <- function(x){x[2]}
numpart <- sapply(splitNames, secondElement)
numpart <- na.omit(numpart)
numpart <- as.integer(numpart)
colindex <- 1
for (i in numpart) {
         goodname <- as.character(features[i, 2])
         names(selectdata)[colindex] <- goodname
         colindex <- colindex + 1
}

## clean up the variable names

names(selectdata) <- tolower(names(selectdata))
names(selectdata) <- gsub("-", "", names(selectdata))
names(selectdata) <- sub("\\(\\)","", names(selectdata))

## rename activity and subject columns

testactivitydata <- rename(testactivitydata, activity = V1)
testsubjectdata <- rename(testsubjectdata, subject = V1)

## use cbind to combine these files into one dataset

testsubactdat <- cbind(testsubjectdata, testactivitydata, selectdata)

## load raw data files for the training data and assign them to variables

traindata <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
trainactivitydata <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")
trainsubjectdata <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")

## extract columns that contain mean and sd measurements

trainselectdata <- select(traindata, c(V1:V6, V41:V46, V81:V86, V121:V126, V161:V166, V201:V202, V214:V215, V227:V228, V240:V241, V253:V254, V266:V271, V345:V350, V424:V429, V503:V504, V516:V517, V529:V530, V542:V543))

## use cbind to combine these files into one dataset

trainsubactdat <- cbind(trainsubjectdata, trainactivitydata, trainselectdata)

## assign variable names from the test data to the training data

names(trainsubactdat) <- names(testsubactdat)

## combine the two clean data sets into one

alldata <- rbind(trainsubactdat, testsubactdat)

## initialize data frame for the independent tidy dataset

tidydf <- data.frame()

##create column names for the independent tidy dataset

tidynames <- names(alldata)
for (i in 3:68) {
        tidynames[i] <- paste0("mean", names(alldata)[i])          
}

## build the tidy data frame

for (i in 1:30) {
        for (j in 1:6) {
                subnum <- subset(alldata, subject == i)
                actnum <- subset(subnum, activity == j)
                tempvector <- c(i, j, colMeans(actnum)[3:68])
                tidydf <- rbind(tidydf, tempvector)
        }
}

## assign the column names for the tidy data frame

names(tidydf) <- tidynames