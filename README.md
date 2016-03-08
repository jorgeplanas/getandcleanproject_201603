# Getting and Cleaning Data course project

Course Project Repository for the Getting and Cleaning Course of the Data Science Specialization

The original data is divided in Test and Train observations, and each of these is divided in three files: subjects, activities and measurements. The run_analysis.R script integrates the different original files (subjects, activities and values of the Test and Train Observations) in one data frame, selects the variables with mean and standard deviation measurements, and gives descriptive names to the activities and to the variables, in order to follow the tidy data principles. Finally, the original variables have been summarised in a new file AVEdata.txt, so the values represent an aggregate mean for each subject and specific activity.

The script assumes the original data zip is unzipped in your working directory as it does by default (with all the files placed in a folder called UCI HAR Dataset). The data can be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The following R script creates a folder called humanactivity in your working directory, sets it as the working directory, downloads and unzips the data in it (including the mentioned UCI HAR Dataset folder):

```
if (!file.exists("humanactivity")) {
        dir.create("humanactivity")}

setwd(".//humanactivity")

url<-'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
download.file(url,"humanactivitydata.zip")

unzip("humanactivitydata.zip")

```

The data can be read into R with 

```
read.table("humanactaveraged.txt", header=TRUE) 
```

You can find a more detailed description of the original data, the transformations and the resulting data frame and its variables in the CODEBOOK.md file
