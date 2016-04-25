Data source
-----------
This dataset is derived from the "Human Activity Recognition Using Smartphones Data Set" 

Feature Selection 
-----------------
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
In short, for this derived dataset, these signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The columns in the data:

 [1] "activity"                           "subject"                            "tBodyAccMeanX"                     
 [4] "tBodyAccMeanY"                      "tBodyAccMeanZ"                      "tBodyAccStdX"                      
 [7] "tBodyAccStdY"                       "tBodyAccStdZ"                       "tGravityAccMeanX"                  
[10] "tGravityAccMeanY"                   "tGravityAccMeanZ"                   "tGravityAccStdX"                   
[13] "tGravityAccStdY"                    "tGravityAccStdZ"                    "tBodyAccJerkMeanX"                 
[16] "tBodyAccJerkMeanY"                  "tBodyAccJerkMeanZ"                  "tBodyAccJerkStdX"                  
[19] "tBodyAccJerkStdY"                   "tBodyAccJerkStdZ"                   "tBodyGyroMeanX"                    
[22] "tBodyGyroMeanY"                     "tBodyGyroMeanZ"                     "tBodyGyroStdX"                     
[25] "tBodyGyroStdY"                      "tBodyGyroStdZ"                      "tBodyGyroJerkMeanX"                
[28] "tBodyGyroJerkMeanY"                 "tBodyGyroJerkMeanZ"                 "tBodyGyroJerkStdX"                 
[31] "tBodyGyroJerkStdY"                  "tBodyGyroJerkStdZ"                  "tBodyAccMagMean"                   
[34] "tBodyAccMagStd"                     "tGravityAccMagMean"                 "tGravityAccMagStd"                 
[37] "tBodyAccJerkMagMean"                "tBodyAccJerkMagStd"                 "tBodyGyroMagMean"                  
[40] "tBodyGyroMagStd"                    "tBodyGyroJerkMagMean"               "tBodyGyroJerkMagStd"               
[43] "fBodyAccMeanX"                      "fBodyAccMeanY"                      "fBodyAccMeanZ"                     
[46] "fBodyAccStdX"                       "fBodyAccStdY"                       "fBodyAccStdZ"                      
[49] "fBodyAccMeanFreqX"                  "fBodyAccMeanFreqY"                  "fBodyAccMeanFreqZ"                 
[52] "fBodyAccJerkMeanX"                  "fBodyAccJerkMeanY"                  "fBodyAccJerkMeanZ"                 
[55] "fBodyAccJerkStdX"                   "fBodyAccJerkStdY"                   "fBodyAccJerkStdZ"                  
[58] "fBodyAccJerkMeanFreqX"              "fBodyAccJerkMeanFreqY"              "fBodyAccJerkMeanFreqZ"             
[61] "fBodyGyroMeanX"                     "fBodyGyroMeanY"                     "fBodyGyroMeanZ"                    
[64] "fBodyGyroStdX"                      "fBodyGyroStdY"                      "fBodyGyroStdZ"                     
[67] "fBodyGyroMeanFreqX"                 "fBodyGyroMeanFreqY"                 "fBodyGyroMeanFreqZ"                
[70] "fBodyAccMagMean"                    "fBodyAccMagStd"                     "fBodyAccMagMeanFreq"               
[73] "fBodyBodyAccJerkMagMean"            "fBodyBodyAccJerkMagStd"             "fBodyBodyAccJerkMagMeanFreq"       
[76] "fBodyBodyGyroMagMean"               "fBodyBodyGyroMagStd"                "fBodyBodyGyroMagMeanFreq"          
[79] "fBodyBodyGyroJerkMagMean"           "fBodyBodyGyroJerkMagStd"            "fBodyBodyGyroJerkMagMeanFreq"      
[82] "angletBodyAccMean,gravity"          "angletBodyAccJerkMean,gravityMean"  "angletBodyGyroMean,gravityMean"    
[85] "angletBodyGyroJerkMean,gravityMean" "angleX,gravityMean"                 "angleY,gravityMean"                
[88] "angleZ,gravityMean"   

Activity: name of the activity for the actual record
Subject: ID of the subject related to the measure
