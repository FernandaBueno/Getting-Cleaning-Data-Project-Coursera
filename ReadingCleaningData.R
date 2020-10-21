
setwd('D:\1Documentos\DataScienceCoursera\project')

# Download data
DataUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dir.create( "./rawData")
download.file(url = DataUrl, destfile =  "./rawData/rawData.zip")

#Extract Data
setwd("./rawData")
unzip(zipfile = "rawData.zip")

# Read Data
#train
subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
yTrain <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)
xTrain <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
#test
subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
yTest <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)
xTest <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)

# Merge Train Test (Part 1. Merges the training and the test sets to create one data set)
subject <- rbind(subjectTrain, subjectTest)
yMerge <- rbind(yTrain, yTest)
xMerge <- rbind(xTrain, xTest)

# Get variable names (9)Part 4. Appropriately labels the data set with descriptive variable names)
featuresNames <- read.table(paste(sep = "", "./UCI HAR Dataset/features.txt"))
colnames(xMerge) <- t(featuresNames[2])
colnames(yMerge) <- "Activity"
colnames(subject) <- "Subject"

# Get labels (Part 3. Uses descriptive activity names to name the activities in the data set)
activityLabels <- read.table(paste(sep = "", "./UCI HAR Dataset/activity_labels.txt"))
for (i in 1:NROW(activityLabels)){
    yMerge[yMerge == activityLabels[i,1]] <- as.character(activityLabels[i,2])
}
# Merge all Data
allData <- cbind(subject,yMerge,xMerge)

# part 2. Extracts only the measurements on the mean and standard deviation for each measurement
colsMeanOrSTD<- grep(".*Mean.*|.*Std.*", names(allData), ignore.case=TRUE)

# Part 5. creates a second, independent tidy data set with the average of 
# each variable for each activity and each subject.
col2extract <- c(1,2,colsMeanOrSTD) #1 and 2 are subject and activity columns

AverageDataSet <- allData[,col2extract]

# Save tidy data
setwd('D:/1Documentos/DataScienceCoursera/project')

write.table(AverageDataSet,file="AverageDataSet.txt", row.names = FALSE)

    



