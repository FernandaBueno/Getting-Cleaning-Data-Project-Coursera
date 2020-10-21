Getting Cleaning Data Project Coursera
--------------------------------------

Aim: This course project is to extract and clean a data set so it can be
used for further analysis

-   The assignment is:

Part 1 Merges the training and the test sets to create one data set.
Part 2 Extracts only the measurements on the mean and standard deviation
for each measurement. Part 3 Uses descriptive activity names to name the
activities in the data set Part 4 Appropriately labels the data set with
descriptive variable names. Part 5 From the data set in step 4, creates
a second, independent tidy data set with the average of each variable
for each activity and each subject.

-   In the ReadingCleaningData.R the order of the step are not in the
    order above, but are indicated with comments

-   Download data at:
    <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" class="uri">https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip</a>

Files
-----

-   `codebook.md.` describes the variables, the data, and any work that
    are performed to clean up the data.

-   `ReadingCleaningData.R` contains all the coding for doing the course
    project, that includes downloading and unzipping the dataset that is
    used for this project, merging data, extracting data, and saving
    `AverageDataset.txt` from part5 (step 5 of assignment)

-   `AverageDataset.txt` is an output file from `ReadingCleaningData.R`,
    which is the average features of each subject and each activity.
