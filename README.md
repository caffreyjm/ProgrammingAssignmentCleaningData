##Reason for run_analysis.R :

Summarization of wearable computing data collected from the accelerometers from the Samsung Galaxy S smartphone. 
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 

A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Function:

run_analysis.R provides the following function

    Merges the training and the test sets to create one data set.
    Extracts only the measurements on the mean and standard deviation for each measurement. 
    Uses descriptive activity names to name the activities in the data set
    Appropriately labels the data set with descriptive variable names. 
	Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Software Require:

	R Version 3.2.1			tested with delivery (06-18_2015)
	dplyr Version: 	0.4.2

##Platform Used during validation:

	R Version 3.2.1			tested with delivery (06-18_2015)
	dplyr Version: 	0.4.2
							tested with Windows 7 Professional Service Pack 1

##Data Source:

	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##Execution:

	1. Download data from data source using appropriate technique for you platform into work_directory_for_analysis
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

	2. Unpack / unzip data while preserving the directory structure using appropriate technique for your platform
tools like IZArc for windows or unzip for Linux	
			+ expected directory structure 
			+ work_directory_for_analysis 
				- getdata_projectfiles_UCI HAR Dataset
					* UCI HAR Dataset
						test
						train
	3. download run_analysis.R to work_directory_for_analysis
	4. start R
	5. change working directory to work_directory_for_analysis
	6. load run_analysis.R
			
			- source(run_analysis.R)
			
	7. executive run_analysis.R("work_directory","output_file_name")

			- example	run_analysis(".","tidy_data.txt")		. 				local directory
															tidy_data.txt	file name of results
##Results:

- message 	run_analysis.R completed successfully.  File written to work_directory/output_file_name
- output_file	