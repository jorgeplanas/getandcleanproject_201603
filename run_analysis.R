

#load into R all the needed text files 

xtest<-read.table("./UCI HAR Dataset/test/X_test.txt", sep="", header=FALSE)

ytest<-read.table("./UCI HAR Dataset/test/Y_test.txt", sep="", header=FALSE)

subtest<-read.table("./UCI HAR Dataset/test/subject_test.txt", sep="", header=FALSE)

xtrain<-read.table("./UCI HAR Dataset/train/X_train.txt", sep="", header=FALSE)

ytrain<-read.table("./UCI HAR Dataset/train/Y_train.txt", sep="", header=FALSE)

subtrain<-read.table("./UCI HAR Dataset/train/subject_train.txt", sep="", header=FALSE)

features<-read.table("./UCI HAR Dataset/features.txt", sep="", header=FALSE)

activity<-read.table("./UCI HAR Dataset/activity_labels.txt", sep="", header=FALSE)

#join the test and train files and name the variables

xtot<-rbind(xtrain,xtest)
ytot<-rbind(ytrain,ytest)
subtot<-rbind(subtrain,subtest)
names(subtot)<-c("subject")
names(ytot)<-c("activity")
names(xtot)<-features[,2]

#give the appropiate names to the activities, converting variable to a factor

ytot$activity <- factor(ytot$activity ,
                    levels = activity[,1],
                    labels = activity[,2])

#join the subject, activity and data files

dataset<-cbind(subtot,ytot,xtot)

#create an index for the subject, activity, mean and standard deviation variables, and extract them
#to a new dataset 

datanames<-names(dataset)

dataindex<-grep("subject|activity|mean\\()|std\\()",datanames)

datasel<-dataset[,dataindex]

#modify the name of the variables to make them more descriptive

selnames<-names(datasel)

selnames<-tolower(selnames)

selnames<-sub("tb","timeb",selnames)
selnames<-sub("tg","timeg",selnames)
selnames<-sub("fb","freqb",selnames)
selnames<-sub("std","stddev",selnames)
selnames<-sub("\\()","",selnames)

names(datasel)<-selnames

#install dplyr if needed, load and summarise the data with the mean by subject and activity

if (!require("dplyr")) install.packages("dplyr")

library(dplyr)

avedata<-datasel %>% group_by(subject,activity) %>% summarise_each(funs(mean))

#write the final file

write.table(avedata, file="./humanactaveraged.txt",sep = " ",row.names=FALSE ) 

