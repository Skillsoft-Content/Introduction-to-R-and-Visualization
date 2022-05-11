#######################################################
#######################################################
############    COPYRIGHT - DATA SOCIETY   ############
#######################################################
#######################################################

## INTRO TO R PART3 ##

## NOTE: To run individual pieces of code, select the line of code and
##       press ctrl + enter for PCs or command + enter for Macs


#=================================================-
#### Slide 5: Directory settings  ####

# Set `main_dir` to the location of your `skillsoft-2021` folder (for Mac/Linux).
main_dir = "~/Desktop/skillsoft-2021"

# Set `main_dir` to the location of your `skillsoft-2021` folder (for Windows).
main_dir = "C:/Users/[username]/Desktop/skillsoft-2021"

# Make `data_dir` from the `main_dir` and remainder of the path to data directory.
data_dir = paste0(main_dir, "/data")

# Make `plot_dir` from the `main_dir` and remainder of the path to plots directory.
plot_dir = paste0(main_dir, "/plots")



#=================================================-
#### Slide 6: Directory settings  ####

# Set working directory to where the data is.
setwd(data_dir)
# Print working directory (Mac/Linux).
getwd()
# Print working directory (Windows).
getwd()


#=================================================-
#### Slide 7: Loading the dataset  ####

# Set working directory to where we store data.
setwd(data_dir)

# Read CSV file called "ChemicalManufacturingProcess.csv"
CMP = read.csv("ChemicalManufacturingProcess.csv",
               header = TRUE,
               stringsAsFactors = FALSE)

# View CMP dataset in tabular data explorer.
View(CMP)


#=================================================-
#### Slide 9: Subsetting data  ####

# Let's make a vector of column indices we would like to save.
column_ids = c(1:4,  #<- concatenate a range of ids
               14:16)#<- with another a range of ids
column_ids           #<- verify that we have the correct set of columns

# Let's save the subset into a new variable and look at its structure.
CMP_subset = CMP[ , column_ids]
str(CMP_subset)


#=================================================-
#### Slide 10: Summary statistics  ####

?summary

summary(data) #<- Either the dataframe or single column 


#=================================================-
#### Slide 11: Summary statistics: CMP  ####

summary(CMP_subset) #<- getting summary statistics of CMP_subset


#=================================================-
#### Slide 13: Working with missing data: max values  ####

# Let's try and compute the maximum value of the 1st manufacturing process.
max_process01 = max(CMP_subset$ManufacturingProcess01)
max_process01
max_process02 = max(CMP_subset$ManufacturingProcess01, na.rm = TRUE)
max_process02


#=================================================-
#### Slide 15: Working with missing data  ####

# Let's take a look at `ManufacturingProcess01`
# and see if any of the values in it are `NA`.
is.na(CMP_subset$ManufacturingProcess01)


#=================================================-
#### Slide 16: Working with missing data  ####

?which



#=================================================-
#### Slide 17: Working with missing data: identifying NA values  ####

# Let's save this vector of logical values to a variable.
is_na_MP01 = is.na(CMP_subset$ManufacturingProcess01)

# To determine WHICH elements in the vector are `TRUE`and are NA, we will use `which` function.

# Since we already have a vector of `TRUE` or `FALSE` logical values
# we only have to give it to `which` and it will return all of the
# indices of values that are `TRUE`.
which(is_na_MP01)

# This is also a correct way to set it up.
which(is_na_MP01 == TRUE)


#=================================================-
#### Slide 18: Working with missing data: locating NA values  ####

# Let's save the index to a variable.
na_id = which(is_na_MP01)
na_id

# Let's view the value at the `na_id` index.
CMP_subset$ManufacturingProcess01[na_id]


#=================================================-
#### Slide 19: Working with missing data: mean replacement  ####

# Compute the mean of the `ManufacturingProcess01`.
mean_process01 = mean(CMP_subset$ManufacturingProcess01)
mean_process01

# Compute the mean of the `ManufacturingProcess01` and set `na.rm` to `TRUE`.
mean_process01 = mean(CMP_subset$ManufacturingProcess01, na.rm = TRUE)
mean_process01


#=================================================-
#### Slide 20: Working with missing data  ####

# Assign the mean to the entry with the `NA`.
CMP_subset$ManufacturingProcess01[na_id] = mean_process01
CMP_subset$ManufacturingProcess01[na_id]
max_process01 = max(CMP_subset$ManufacturingProcess01)
max_process01


#=================================================-
#### Slide 21: Working with missing data  ####

# Impute missing values of `ManufacturingProcess02` with the mean
is_na = is.na(CMP_subset$ManufacturingProcess02)
na_id = which(is_na)
mean_process02 = mean(CMP_subset$ManufacturingProcess02, na.rm = TRUE)
CMP_subset$ManufacturingProcess02[na_id] = mean_process02


# Impute missing values of `ManufacturingProcess03` with the mean
is_na = is.na(CMP_subset$ManufacturingProcess03)
na_id = which(is_na)
mean_process03 = mean(CMP_subset$ManufacturingProcess03, na.rm = TRUE)
CMP_subset$ManufacturingProcess03[na_id] = mean_process03


#=================================================-
#### Slide 23: Exercise 1  ####




#=================================================-
#### Slide 27: Conditionals: `ifelse` function  ####

?ifelse


#=================================================-
#### Slide 28: Ifelse example  ####

meanCMP_yield = mean(CMP$Yield)

CMP$new_yield = ifelse(CMP$Yield >= meanCMP_yield,   #<- if CMP$Yield is greater than 
                                                     #   or equal to the mean of Yield
                       "above_average",              #<- Then new_yield = above average    
                       "below_average")              #<- Else new_yield = below average


head(CMP[,c("Yield","new_yield")])


#=================================================-
#### Slide 30: Loops: `for` loop  ####


# Basic for loop.
for(i in 1:num_of_repetitions){
  perform action on element at index i }


#=================================================-
#### Slide 31: Loops: `for` loop  ####

CMP_subset_variables = colnames(CMP_subset)

# Adjust the start index.
seq_start = 3

# Adjust the end index.
seq_end = 6

# Loop through just a subset 
# of the variable names.
for(i in seq_start:seq_end){
  print(CMP_subset_variables[i])
}


#=================================================-
#### Slide 32: Functions in R  ####


# Basic function with no arguments.
function(){
  perform action
}

# Basic function with 1 argument.
function(argument){
  perform action given argument
}

# Basic function with 2 (or more) arguments.
function(argument1, argument2){
  perform action given argument1, argument2
}



#=================================================-
#### Slide 33: Functions in R: function without arguments  ####

# Make a function that prints "Hello" and
# assign it to `PrintHello` variable.

PrintHello = function(){ #<- declare function
  print("Hello!")        #<- perform action
}

# Invoke function by calling `PrintHello()`.
PrintHello()



#=================================================-
#### Slide 34: Functions in R: function with arguments  ####

# Make a function that prints "Hello, [name]".
PrintHello = function(name){    #<- Add `name` argument to function declaration
  
  # Save message to print to a variable.
  hello_name = paste0("Hello ", #<- concatenate "Hello "
                      name,     #<-  with the `name` from function argument, and
                      "!")      #<-  with the remainder of the message to print
  
  print(hello_name)             #<- print message
}

# Invoke function by calling `PrintHello([name])`.
PrintHello("User")


#=================================================-
#### Slide 35: Functions in R: function with arguments  ####

# Make function that rounds to the first `n` digits of `pi`.
GetPi = function(n){            #<- Add `n` argument to function declaration
  
  pi_num = round(3.14159265359, #<- Round `pi`
                 n)             #<-   to `n` digits
  return(pi_num)         
}

# Invoke function by calling `GetPi([n])`.
GetPi(3)


#=================================================-
#### Slide 37: Functions in R  ####

ImputeNAsWithMean = function(dataset){        
  
  for(i in 1:ncol(dataset)){                  
    is_na = is.na(dataset[, i])
    if(any(is_na)){                          
      na_ids = which(is_na)                  
      var_mean = mean(dataset[, i],          
                      na.rm = TRUE)          
      dataset[na_ids, i] = var_mean         
      message = paste0(
        "NAs substituted with mean in ",
        colnames(dataset)[i])            
      print(message)                         
    }
  }
  return(dataset)                             
}
# Let's re-generate our subset again.
CMP_subset = CMP[, c(1:4, 14:16)]

# Let's test the function giving the `CMP_subset` as the argument.
CMP_subset_imputed = ImputeNAsWithMean(CMP_subset)

# Inspect the structure.
str(CMP_subset_imputed)


#=================================================-
#### Slide 39: Exercise 2  ####




#=================================================-
#### Slide 44: Installing packages  ####

install.packages("tidyverse")   #<- Install package 
library(tidyverse)              #<- Load the package into the environment.
library(help = "tidyverse")     #<- View package documentation.


#=================================================-
#### Slide 46: Installing packages and loading data  ####

#install.packages("nycflights13")
library(nycflights13)


#=================================================-
#### Slide 48: A little more about tidyverse  ####

tidyverse_update()


#=================================================-
#### Slide 50: Data transformation  ####

# Load the dataset and save it as 'flights' 
# It is native to r so we can load it like this
flights = nycflights13::flights	

?flights


#=================================================-
#### Slide 54: Filter   ####

# Check for detailed documentation
?dplyr::filter

# Use cases for `filter` function

filter(df,           #<- dataframe 
       filter_cond1, #<- subsetting rule(s)   
       ...)          #<- other arguments


#=================================================-
#### Slide 55: Filter   ####

# Load the flights dataset into the environment.
data(flights)

# Filter `flights` dataframe to display all records from January (month == 1) of 2013 (year == 2013).
filter(flights,      #<- set data 
       month == 1,   #<- filter by month 
       year == 2013) #<- filter by year


#=================================================-
#### Slide 56: Filter   ####

# You will have to make sure to save the subset. To do this, use `=`.
filter_flights = filter(flights, month == 1, year == 2013)

# View your output.
filter_flights


#=================================================-
#### Slide 59: Filter - examples of logical operators  ####

# Filter with just `&`.
filter(flights, month == 1 & day == 25)


#=================================================-
#### Slide 60: Filter - examples of logical operators (cont-d)  ####

# Filter with `!`.
filter(flights, month != 1 & day != 25)


#=================================================-
#### Slide 61: Filter - examples of logical operators (cont-d)  ####

# Filter with `%in%`.
filter(flights, month %in% c(1, 2) & day == 25)


#=================================================-
#### Slide 62: Using filter with NA values  ####

# Create a dataframe with 2 columns.
NA_df = data.frame(x = c(1, NA, 2),  #<- column x with 3 entries with 1 NA
                   y = c(1, 2, 3))   #<- column y with 3 entries

# Filter without specifying anything regarding NAs.
filter(NA_df, x >= 1)

# Filter with specifying to keep rows if there is an NA.
filter(NA_df, is.na(x) | x >= 1)


#=================================================-
#### Slide 64: Arrange  ####

# Check for detailed documentation
?dplyr::arrange

# Use cases for `arrange` function
arrange(df,            #<- dataframe 
        arrange_cond1, #<- column by which 
                       #   to arrange
        ...)           #<- other args.


#=================================================-
#### Slide 65: Arrange example  ####

# Arrange data by year, then month, and then day.
arrange(flights, #<- dataframe we want to arrange
        year,    #<- 1st: arrange by year
        month,   #<- 2nd: arrange by month 
        day)     #<- 3rd: arrange by day


#=================================================-
#### Slide 66: Arrange options  ####

# Arrange data by year, descending month and then day.
arrange(flights,     #<- dataframe we want to arrange
        year,        #<- 1st: arrange by year
        desc(month), #<- 2nd: arrange by month in descending order
        day)         #<- 3rd: arrange by day 


#=================================================-
#### Slide 67: Arrange with NA values  ####

# Arrange data with missing values.
arrange(NA_df, x)

# Even when we use `desc` the `NA` is taken to the last row.
arrange(NA_df, desc(x))



#=================================================-
#### Slide 69: Exercise 3  ####




#######################################################
####  CONGRATULATIONS ON COMPLETING THIS MODULE!   ####
#######################################################
