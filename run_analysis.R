  library(data.table) #Charge data.tale library
  
  #Charge all files from de dataset
  dataTrainX <- read.table("./UCI HAR Dataset/train/X_train.txt",header = FALSE)
  dataTrainY <- read.table("./UCI HAR Dataset/train/Y_train.txt",header = FALSE)
  dataTrainSub <- read.csv("./UCI HAR Dataset/train/subject_train.txt",header = FALSE)
  dataTestX <- read.table("./UCI HAR Dataset/test/X_test.txt",header = FALSE)
  dataTestY <- read.table("./UCI HAR Dataset/test/Y_test.txt",header = FALSE)
  dataTestSub <- read.csv("./UCI HAR Dataset/test/subject_test.txt",header = FALSE)
  
  #merge the "Test" files in one dataset
  allTestdata <- cbind(dataTestY,dataTestSub,dataTestX)
  
  #merge the "Train" files in one dataset
  allTraindata <- cbind(dataTrainY,dataTrainSub,dataTrainX)
  
  #merge data and train datasets
  allData <- rbind(allTestdata,allTraindata)
  
  #calculate the mean of columns
  #allData$mean <- rowMeans(subset(allData,select = c(3:563)))
  
  #extract just the measures info
  #measures <- allData[,3:563]
  
  #calculates de standard deviation for all rows
  #sd <- apply(measures,1,sd)
  
  #adds the sd result to the principal dataset
  #allData <- cbind(allData,sd)
  
  #renames columns
  colnames(allData)[1]<-"activity"
  colnames(allData)[2]<-"subject"
  
  #replace the "activity" code for the complete activity type name
  allData$activity<-factor(allData$activity,labels = c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))
  
  #charge the title file to rename the col names
  titles <- read.table("./UCI HAR Dataset/features.txt")  
  titles <- titles[,2]
  titles = gsub('-mean', 'Mean', titles)
  titles = gsub('-std', 'Std', titles)
  titles = gsub('[-()]', '', titles)
  titles = c("activity","subject",titles)

  #sets the name for the dataset
  cols <- c(1,2,grep(".*Mean.*|.*Std.*", titles))
  titles <- titles[cols]
  allData <- allData[cols]
  setnames(allData,names(allData),titles)
  
  #Creates a new dataset with the mean of every variable by activity group
  tidyData <- aggregate(allData[,3:88],list(allData$activity),mean)
  write.csv(allData,file = "./run_analysisResult.csv")
  write.csv(tidyData,file = "./run_analysisTidyData2.csv")
