Codebook for the data set tidy.txt 

The data set is derived from the data set Human Activity Recognition Using Smartphones Dataset.
Original data due to Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.(Smartlab - Non Linear Complex Systems Laboratory at DITEN - Università degli Studi di Genova.)

This data set contains data from smartphones carried by 30 subjects performing six
different actvities:
WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
Each feature is an average over a number of observations of each subject performing each activity. 
For each combination of subject and activity, 66 different features are provided.
The features are mean and standard deviation of different components of sensor signals
recorded by the smart phones carried by the subjects, in time domain and in frequency domain.
Each feature is normalized and takes values in [-1,1].
Brief descriptions of the features are given in the table below. For more detailed information
about the smart phone signals and how the experiment was carried out, the reader is referred to information here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


Variable Name                                 Description       Type      Range            

subject                                       Id no. of subject integer   [1,30]

activity                                      Activity name     character "WALKING"
                                                                          "WALKING_UPSTAIRS"
                                                                          "WALKING_DOWNSTAIRS"
                                                                          "STANDING"
                                                                          "LAYING"
                            
timebodyaccelerationmeanxdirection            Mean of body        double    [-1,1]
                                              acceleration in 
                                              the time domain
                                              x-direction.     
timebodyaccelerationmeanydirection            Mean of body        double    [-1,1]
                                              acceleration in 
                                              the time domain
                                              y-direction.       

timebodyaccelerationmeanzdirection            Mean of body        double    [-1,1]
                                              acceleration in 
                                              the time domain
                                              z-direction. 

timegravityaccelerationmeanxdirection         Mean of             double    [-1,1]
                                              gravitational       
                                              acceleration in 
                                              the time domain
                                              x-direction.      

timegravityaccelerationmeanydirection         Mean of             double    [-1,1]
                                              gravitational       
                                              acceleration in 
                                              the time domain
                                              y-direction.         

timegravityaccelerationmeanzdirection         Mean of             double    [-1,1]
                                              gravitational       
                                              acceleration in 
                                              the time domain
                                              y-direction.       

timebodyaccelerationjerkmeanxdirection        Mean of body        double    [-1,1]
                                              acceleration jerk 
                                              in the time domain
                                              x-direction.     

timebodyaccelerationjerkmeanydirection        Mean of body        double    [-1,1]
                                              acceleration jerk 
                                              in the time domain
                                              y-direction.       

timebodyaccelerationjerkmeanzdirection        Mean of body        double    [-1,1]
                                              acceleration jerk 
                                              in the time domain
                                              z-direction.    

timebodygyromeanxdirection                    Mean of body        double    [-1,1]
                                              gyroscope signal 
                                              in the time domain
                                              x-direction.       

timebodygyromeanydirection                    Mean of body        double    [-1,1]
                                              gyroscope signal 
                                              in the time domain
                                              y-direction.       

timebodygyromeanzdirection                    Mean of body        double    [-1,1]
                                              gyroscope signal 
                                              in the time domain
                                              z-direction.    

timebodygyrojerkmeanxdirection                Mean of body        double    [-1,1]
                                              gyroscope jerk
                                              signal in the time 
                                              domain x-direction.        

timebodygyrojerkmeanydirection                Mean of body        double    [-1,1]
                                              gyroscope jerk
                                              signal in the time 
                                              domain y-direction.     

timebodygyrojerkmeanzdirection                Mean of body        double    [-1,1]
                                              gyroscope jerk
                                              signal in the time 
                                              domain z-direction.      

timebodyaccelerationmagnitudemean             Mean of magnitude   double    [-1,1]
                                              of body acceleration
                                              signal in the time 
                                              domain.    

timegravityaccelerationmagnitudemean          Mean of magnitude   double    [-1,1]
                                              of gravitational
                                              acceleration signal 
                                              in the time domain      

timebodyaccelerationjerkmagnitudemean         Mean of magnitude   double    [-1,1]
                                              of acceleration
                                              jerk signal in the 
                                              time domain.      

timebodygyromagnitudemean                     Mean of magnitude   double    [-1,1]
                                              of body gyroscope
                                              signal in the time 
                                              domain.    

timebodygyrojerkmagnitudemean                 Mean of magnitude   double    [-1,1]
                                              of body gyroscope
                                              jerk signal in the 
                                              time domain.          

frequencybodyaccelerationmeanxdirection       Mean of body        double    [-1,1]
                                              acceleration in 
                                              the frequency domain
                                              x-direction.

frequencybodyaccelerationmeanydirection       Mean of body        double    [-1,1]
                                              acceleration in 
                                              the frequency domain
                                              y-direction.

frequencybodyaccelerationmeanzdirection       Mean of body        double    [-1,1]
                                              acceleration in 
                                              the frequency domain
                                              z-direction. 

frequencybodyaccelerationjerkmeanxdirection   Mean of body        double    [-1,1]
                                              acceleration jerk
                                              signal in 
                                              the frequency domain
                                              x-direction.     

frequencybodyaccelerationjerkmeanydirection   Mean of body        double    [-1,1]
                                              acceleration jerk
                                              signal in 
                                              the frequency domain
                                              y-direction.     

frequencybodyaccelerationjerkmeanzdirection   Mean of body        double    [-1,1]
                                              acceleration jerk 
                                              signal in 
                                              frequency domain
                                              z-direction.       

frequencybodygyromeanxdirection               Mean of body        double    [-1,1]
                                              gyroscope signal 
                                              in frequency
                                              domain
                                              x-direction.        

frequencybodygyromeanydirection               Mean of body        double    [-1,1]
                                              gyroscope signal 
                                              in frequency
                                              domain
                                              y-direction.     

frequencybodygyromeanzdirection               Mean of body        double    [-1,1]
                                              gyroscope signal 
                                              in frequency
                                              domain
                                              z-direction.       

frequencybodyaccelerationmagnitudemean        Mean of magnitude    double    [-1,1]
                                              of body acceleration
                                              signal in frequency
                                              domain.      

frequencybodyaccelerationjerkmagnitudemean    Mean of magnitude    double    [-1,1]
                                              of body acceleration
                                              jerk signal in 
                                              frequency domain.        

frequencybodygyromagnitudemean                Mean of magnitude    double    [-1,1]
                                              of body gyroscope
                                              signal in 
                                              frequency domain.                

frequencybodygyrojerkmagnitudemean            Mean of magnitude    double    [-1,1]
                                              of body gyroscope
                                              jerk signal in 
                                              frequency domain.       

timebodyaccelerationstddeviationxdirection    Standard deviation   double    [-1,1]
                                              of body acceleration
                                              signal in time domain
                                              x-direction. 

timebodyaccelerationstddeviationydirection    Standard deviation   double    [-1,1]
                                              of body acceleration
                                              signal in time domain
                                              y-direction.     

timebodyaccelerationstddeviationzdirection    Standard deviation   double    [-1,1]
                                              of body acceleration
                                              signal in time domain
                                              z-direction.    

timegravityaccelerationstddeviationxdirection Standard deviation   double    [-1,1]
                                              of gravitational 
                                              acceleration signal 
                                              in time domain
                                              x-direction.    

timegravityaccelerationstddeviationydirection Standard deviation   double    [-1,1]
                                              of gravitational 
                                              acceleration signal 
                                              in time domain
                                              y-direction.    

timegravityaccelerationstddeviationzdirection Standard deviation   double    [-1,1]
                                              of gravitational 
                                              acceleration signal 
                                              in time domain
                                              z-direction.

timebodyaccelerationjerkstddeviationxdirection Standard deviation   double    [-1,1]
                                               of gravitational 
                                               acceleration jerk 
                                               signal in time domain
                                               x-direction.     

timebodyaccelerationjerkstddeviationydirection Standard deviation   double    [-1,1]
                                               of gravitational 
                                               acceleration jerk 
                                               signal in time domain
                                               y-direction.     

timebodyaccelerationjerkstddeviationzdirection Standard deviation   double    [-1,1]
                                               of gravitational 
                                               acceleration jerk 
                                               signal in time domain
                                               z-direction.   

timebodygyrostddeviationxdirection            Standard deviation   double    [-1,1]
                                              of body gyroscope 
                                              signal in time domain
                                              x-direction.    

timebodygyrostddeviationydirection            Standard deviation   double    [-1,1]
                                              of body gyroscope 
                                              signal in time domain
                                              y-direction.  

timebodygyrostddeviationzdirection            Standard deviation   double    [-1,1]
                                              of body gyroscope 
                                              signal in time domain
                                              z-direction. 

timebodygyrojerkstddeviationxdirection        Standard deviation   double    [-1,1]
                                              of body gyroscope 
                                              jerk signal in 
                                              time domain
                                              x-direction.     

timebodygyrojerkstddeviationydirection        Standard deviation   double    [-1,1]
                                              of body gyroscope 
                                              jerk signal in time 
                                              domain y-direction.  

timebodygyrojerkstddeviationzdirection        Standard deviation   double    [-1,1]
                                              of body gyroscope 
                                              jerk signal in time 
                                              domain y-direction.

timebodyaccelerationmagnitudestddeviation     Standard deviation   double    [-1,1]
                                              of magnitude of
                                              body acceleration
                                              signal in time 
                                              domain.    

timegravityaccelerationmagnitudestddeviation  Standard deviation   double    [-1,1]
                                              of magnitude of
                                              gravitational
                                              acceleration signal 
                                              in time domain.    

timebodyaccelerationjerkmagnitudestddeviation Standard deviation   double    [-1,1]
                                              of magnitude of
                                              body acceleration
                                              jerk signal 
                                              in time domain.    

timebodygyromagnitudestddeviation             Standard deviation   double    [-1,1]
                                              of magnitude of
                                              body gyroscope
                                              signal in time domain.   

timebodygyrojerkmagnitudestddeviation         Standard deviation   double    [-1,1]
                                              of magnitude of
                                              body gyroscope
                                              jerk signal 
                                              in time domain. 

frequencybodyaccelerationstddeviationxdirection Standard deviation   double    [-1,1]
                                              of body acceleration
                                              signal in frequency 
                                              domain x-direction.

frequencybodyaccelerationstddeviationydirection Standard deviation   double    [-1,1]
                                              of body acceleration
                                              signal in frequency 
                                              domain y-direction.  

frequencybodyaccelerationstddeviationzdirection Standard deviation   double    [-1,1]
                                              of body acceleration
                                              signal in time domain
                                              z-direction.   

frequencybodyaccelerationjerkstddeviationxdirection Standard deviation   double    [-1,1]
                                              of body acceleration
                                              jerk signal 
                                              in frequency domain 
                                              x-direction.

frequencybodyaccelerationjerkstddeviationydirection Standard deviation   double    [-1,1]
                                              of body acceleration
                                              jerk signal 
                                              in frequency domain 
                                              y-direction.

frequencybodyaccelerationjerkstddeviationzdirection Standard deviation   double    [-1,1]
                                              of body acceleration
                                              jerk signal 
                                              in frequency domain
                                              z-direction.

frequencybodygyrostddeviationxdirection       Standard deviation   double    [-1,1]
                                              of body gyroscope
                                              signal in 
                                              frequency domain
                                              x-direction.     

frequencybodygyrostddeviationydirection       Standard deviation   double    [-1,1]
                                              of body gyroscope
                                              signal in 
                                              frequency domain
                                              y-direction.

frequencybodygyrostddeviationzdirection       Standard deviation   double    [-1,1]
                                              of body gyroscope
                                              signal in 
                                              frequency domain
                                              x-direction.    

frequencybodyaccelerationmagnitudestddeviation Standard deviation   double    [-1,1]
                                              of magnitude of 
                                              body acceleraction
                                              signal 
                                              in frequency domain.
                                                
frequencybodyaccelerationjerkmagnitudestddeviation Standard deviation   double    [-1,1]
                                              of magnitude of 
                                              body acceleraction
                                              jerk signal 
                                              in frequency domain.

frequencybodygyromagnitudestddeviation        Standard deviation   double    [-1,1]
                                              of magnitude of 
                                              body gyroscope
                                              signal 
                                              in frequency domain.

frequencybodygyrojerkmagnitudestddeviation   Standard deviation   double    [-1,1]
                                              of magnitude of 
                                              body gyroscope
                                              jerk signal 
                                              in frequency domain.