## run_analysis sample function function

        ## 'directory' is a character vector with the location
		##  of the data from 
		##   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
		##
		## 'output_file_name' is a character vector with the name of the file written to working directory
		##  specified by directory
		##
		##  data must be extracted into directory_name using tools like IZArc
		##  directory / file structure
		##   directory_name
		##         feature.txt
		##		   activity_label.txt
		##         test
		##	             subject_test.txt
		##               y_test.txt
		##               x_test.txt
		##         train  
		##	             subject_train.txt
		##               y_train.txt
		##               x_train.txt		
		
		##  function requires following installed packages from CRAN
		##
		##		dplyr
		
		
run_analysis <- function(directory=".",output_file_name="results.txt") {

## make sure correct libraries are loaded

	if(!library(dplyr,logical.return=TRUE,quietly=TRUE))
		stop("missing packaged dplyr install package from CRAN" )

## set working directory
	if(!dir.exists(directory))
		stop("missing directory")
		
	old_directory <- getwd()
	new_directory <- paste(directory,"/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset",sep="")
	setwd(new_directory)
## get files containing sample information

	if(!file.exists("features.txt"))
		stop("missing file features.txt: check directory name supplied or working directory used")
	feature_list <- read.table("features.txt")
	
	if(!file.exists("activity_labels.txt"))
		stop("missing file activity_labels.txt: check directory name supplied")
	activity_labels_list <- read.table("activity_labels.txt")
	
	if(!file.exists("test/subject_test.txt"))
		stop("missing file test/subject_test.txt: check directory structure")
	subject_test_list <- read.table("test/subject_test.txt")

	if(!file.exists("test/y_test.txt"))
		stop("missing file test/y_test.txt: check directory content")
	action_test_list <- read.table("test/y_test.txt")	

	if (!file.exists("test/X_test.txt"))
		stop("missing file test/x_test.txt: check directory content")
	test_data <- read.table("test/X_test.txt")

	if(!file.exists("train/subject_train.txt"))
		stop("missing file train/subject_train.txt: check directory structure")
	subject_train_list <- read.table("train/subject_train.txt")

	if(!file.exists("train/y_train.txt"))
		stop("missing file train/y_train.txt: check directory content")
	action_train_list <- read.table("train/y_train.txt")	

	if (!file.exists("train/X_train.txt"))
		stop("missing file train/X_train.txt: check directory content")
	train_data <- read.table("train/X_train.txt")
	
##  consolidate all of the data into one table

	consolidated_test_data <-cbind(action_test_list,subject_test_list,test_data)
	consolidated_train_data <-cbind(action_train_list,subject_train_list,train_data)	
	consolidated_data <- rbind(consolidated_test_data,consolidated_train_data)
	
##  rename data frame columns  
##	identify column with column name contains "*mean()*" or "*std()*"	

	names(consolidated_data)[1] <- "Activity_Name" 
	names(consolidated_data)[2] <- "Subject_id" 
	column_list <- c(1,2)
	
	feature_list_index <- dim(feature_list)[1]
	for (n in 1:feature_list_index)
	{
		work_name <- as.vector(feature_list[n,2])
		names(consolidated_data)[n+2] <- work_name
		
		if (length(grep("*mean()..",work_name)) > 0)
			if (length(grep("*Freq",work_name)) == 0)
				column_list <- c(column_list,(n+2))
		
		if (length(grep("*std()*",work_name)) > 0)		
			column_list <- c(column_list,(n+2))	
	}
## convert activity id to activity name

	activity_list_index <- dim(activity_labels_list)[1]
	for (n in 1:activity_list_index)
	{
		activity_name <- as.vector(activity_labels_list[n,2])
		activity_value <- as.numeric(activity_labels_list[n,1])
		select_list <- consolidated_data[,1] == activity_value
		consolidated_data[select_list,1] <- activity_name
	}
##  select columns with mean() or std() in column name

	mean_std_data <- consolidated_data[,column_list]

##	summarize data

	tidy_data<- mean_std_data %>% group_by(Activity_Name,Subject_id) %>% summarise_each(funs(mean))

	##  reset directory
	
	setwd(old_directory)	
		
## write file name	

	write.table(tidy_data,file=output_file_name,row.names=FALSE)
	
##  write out completion message

	completion_message <- paste("run_analysis.R completed successfully.  File written to ",directory,"/",output_file_name,sep="")
	completion_message
}