# Project Getting and Cleaning Data Code Book
This file contains the data to indicate all the variables and summaries calculated, along with units, and any other relevant information. The data set referred is finalized
in 'tidyData.txt' file.

## Data Set Visualization
The `tidyData.txt` data file is a text file, containing space-separated values.
The first row contains the names of the variables(Column Headers), and the following rows contain the values of these variables.

## Variables Involved
### subject
	Subject identifier, integer, ranges from 1 to 30.
	
### activity
	Activity identifier, string with 6 possible values: 
		- `WALKING`: subject was walking
		- `WALKING_UPSTAIRS`: subject was walking upstairs
		- `WALKING_DOWNSTAIRS`: subject was walking downstairs
		- `SITTING`: subject was sitting
		- `STANDING`: subject was standing
		- `LAYING`: subject was laying
	
### Time-domain signal values
	Average time-domain body acceleration in the X, Y and Z directions:
		- `timeDomainBodyAccelerometerMeanX`
		- `timeDomainBodyAccelerometerMeanY`
		- `timeDomainBodyAccelerometerMeanZ`
		
	Standard deviation of the time-domain body acceleration in the X, Y and Z directions:
		- `timeDomainBodyAccelerometerStandardDeviationX`
		- `timeDomainBodyAccelerometerStandardDeviationY`
		- `timeDomainBodyAccelerometerStandardDeviationZ`
		
	Average time-domain gravity acceleration in the X, Y and Z directions:
		- `timeDomainGravityAccelerometerMeanX`
		- `timeDomainGravityAccelerometerMeanY`
		- `timeDomainGravityAccelerometerMeanZ`
		
	Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:
		- `timeDomainGravityAccelerometerStandardDeviationX`
		- `timeDomainGravityAccelerometerStandardDeviationY`
		- `timeDomainGravityAccelerometerStandardDeviationZ`
		
	Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
		- `timeDomainBodyAccelerometerJerkMeanX`
		- `timeDomainBodyAccelerometerJerkMeanY`
		- `timeDomainBodyAccelerometerJerkMeanZ`
		
	Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
		- `timeDomainBodyAccelerometerJerkStandardDeviationX`
		- `timeDomainBodyAccelerometerJerkStandardDeviationY`
		- `timeDomainBodyAccelerometerJerkStandardDeviationZ`	
		
	Average time-domain body angular velocity in the X, Y and Z directions:
		- `timeDomainBodyGyroscopeMeanX`
		- `timeDomainBodyGyroscopeMeanY`
		- `timeDomainBodyGyroscopeMeanZ`
		
	Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:
		- `timeDomainBodyGyroscopeStandardDeviationX`
		- `timeDomainBodyGyroscopeStandardDeviationY`
		- `timeDomainBodyGyroscopeStandardDeviationZ`

	Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:
		- `timeDomainBodyGyroscopeJerkMeanX`
		- `timeDomainBodyGyroscopeJerkMeanY`
		- `timeDomainBodyGyroscopeJerkMeanZ`

	Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:
		- `timeDomainBodyGyroscopeJerkStandardDeviationX`
		- `timeDomainBodyGyroscopeJerkStandardDeviationY`
		- `timeDomainBodyGyroscopeJerkStandardDeviationZ`

	Average and standard deviation of the time-domain magnitude of body acceleration:
		- `timeDomainBodyAccelerometerMagnitudeMean`
		- `timeDomainBodyAccelerometerMagnitudeStandardDeviation`

	Average and standard deviation of the time-domain magnitude of gravity acceleration:
		- `timeDomainGravityAccelerometerMagnitudeMean`
		- `timeDomainGravityAccelerometerMagnitudeStandardDeviation`

	Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):
		- `timeDomainBodyAccelerometerJerkMagnitudeMean`
		- `timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation`

	Average and standard deviation of the time-domain magnitude of body angular velocity:
		- `timeDomainBodyGyroscopeMagnitudeMean`
		- `timeDomainBodyGyroscopeMagnitudeStandardDeviation`

	Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):
		- `timeDomainBodyGyroscopeJerkMagnitudeMean`
		- `timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation`
		
### Frequency-domain signal values
	Average frequency-domain body acceleration in the X, Y and Z directions:
		- `frequencyDomainBodyAccelerometerMeanX`
		- `frequencyDomainBodyAccelerometerMeanY`
		- `frequencyDomainBodyAccelerometerMeanZ`

	Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:
		- `frequencyDomainBodyAccelerometerStandardDeviationX`
		- `frequencyDomainBodyAccelerometerStandardDeviationY`
		- `frequencyDomainBodyAccelerometerStandardDeviationZ`

	Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:
		- `frequencyDomainBodyAccelerometerMeanFrequencyX`
		- `frequencyDomainBodyAccelerometerMeanFrequencyY`
		- `frequencyDomainBodyAccelerometerMeanFrequencyZ`

	Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
		- `frequencyDomainBodyAccelerometerJerkMeanX`
		- `frequencyDomainBodyAccelerometerJerkMeanY`
		- `frequencyDomainBodyAccelerometerJerkMeanZ`

	Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
		- `frequencyDomainBodyAccelerometerJerkStandardDeviationX`
		- `frequencyDomainBodyAccelerometerJerkStandardDeviationY`
		- `frequencyDomainBodyAccelerometerJerkStandardDeviationZ`

	Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
		- `frequencyDomainBodyAccelerometerJerkMeanFrequencyX`
		- `frequencyDomainBodyAccelerometerJerkMeanFrequencyY`
		- `frequencyDomainBodyAccelerometerJerkMeanFrequencyZ`

	Average frequency-domain body angular velocity in the X, Y and Z directions:
		- `frequencyDomainBodyGyroscopeMeanX`
		- `frequencyDomainBodyGyroscopeMeanY`
		- `frequencyDomainBodyGyroscopeMeanZ`

	Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:
		- `frequencyDomainBodyGyroscopeStandardDeviationX`
		- `frequencyDomainBodyGyroscopeStandardDeviationY`
		- `frequencyDomainBodyGyroscopeStandardDeviationZ`

	Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:
		- `frequencyDomainBodyGyroscopeMeanFrequencyX`
		- `frequencyDomainBodyGyroscopeMeanFrequencyY`
		- `frequencyDomainBodyGyroscopeMeanFrequencyZ`

	Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:
		- `frequencyDomainBodyAccelerometerMagnitudeMean`
		- `frequencyDomainBodyAccelerometerMagnitudeStandardDeviation`
		- `frequencyDomainBodyAccelerometerMagnitudeMeanFrequency`

	Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):
		- `frequencyDomainBodyAccelerometerJerkMagnitudeMean`
		- `frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation`
		- `frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency`

	Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:
		- `frequencyDomainBodyGyroscopeMagnitudeMean`
		- `frequencyDomainBodyGyroscopeMagnitudeStandardDeviation`
		- `frequencyDomainBodyGyroscopeMagnitudeMeanFrequency`

	Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):
		- `frequencyDomainBodyGyroscopeJerkMagnitudeMean`
		- `frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation`
		- `frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency`
		
	