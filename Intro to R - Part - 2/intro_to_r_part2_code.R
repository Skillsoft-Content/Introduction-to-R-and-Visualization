#######################################################
#######################################################
############    COPYRIGHT - DATA SOCIETY   ############
#######################################################
#######################################################

## INTRO TO R PART2 ##

## NOTE: To run individual pieces of code, select the line of code and
##       press ctrl + enter for PCs or command + enter for Macs


#=================================================-
#### Slide 3: Recap: variables and assignment operators  ####

# Define a variable using `<-` 
# as an assignment operator.
A <- 3  
A

# Define a variable using `=` 
# as an assignment operator.
B = 2 + 5
B


#=================================================-
#### Slide 4: Recap: operations with variables  ####

# Add 2 variables.
C = A + B
C

# Add a variable and a number.
D = C + 5
D
# Subtract 2 variables from each other.
D - C

# Subtract a variable from number.
33 - D

# Or a number from a variable.
D - 33


#=================================================-
#### Slide 10: Basic data structures: lists  ####

# To make an empty list in R, 
# you have a few options:
# Option 1: use `list()` command.
list()

# Make a list with different entries.
sample_list = list(1, "am", TRUE)
sample_list


#=================================================-
#### Slide 11: Basic data structures: naming list elements  ####

# Create a named list.
sample_list_named = list(One = 1, 
                         Two = "am", 
                         Three = TRUE)
sample_list_named

attributes(sample_list_named)

# Name existing list.
names(sample_list) = c("One", "Two", "Three")
sample_list

attributes(sample_list)


#=================================================-
#### Slide 12: Basic data structures: introducing structure  ####

?str        #<- Check R documentation
str(object) #<- Any R object

# Inspect the list's structure.
str(sample_list)



#=================================================  -
#### Slide 13: Basic data structures: accessing data within lists  ####

# Access an element of a list.
sample_list[[2]] 

# Access a sub-list with its element(s).
sample_list[2]

# Access a sub-list with its element(s).
sample_list[2:3]

# Access named list elements.
sample_list$One
sample_list$Two
sample_list$Three


#=================================================-
#### Slide 15: Basic data structures: making dataframes  ####

# To make an empty dataframe in R, 
# use `data.frame()` command.
data.frame()

# To make a dataframe with several
# columns, pass column values
# to `data.frame()` command just like
# you would do with lists.
data.frame(1:5, 6:10)



#================================================= -
#### Slide 16: Dataframes: naming columns  ####

# Dataframe with unnamed columns.
unnamed_df = data.frame(1:3, 4:6)
unnamed_df

# Name columns of a dataframe.
colnames(unnamed_df) = c("col1", "col2")
unnamed_df

# Pass column names and values to 
# `data.frame` command just like you 
# would do with named lists.
named_df = data.frame(col1 = 1:3, col2 = 4:6)
named_df



#=================================================-
#### Slide 17: Dataframes: naming rows  ####

# View dataframe.
named_df

# Rename dataframe rows.
rownames(named_df) = c(7:9)
named_df

# Define row names explicitly, 
# use a `row.names` argument.
data.frame(col1 = 1:3, 
           col2 = 4:6, 
           row.names = 7:9)


#=================================================-
#### Slide 18: Dataframes: converting a matrix  ####

# Make a dataframe from matrix.
sample_matrix1 = matrix(nrow = 3, ncol = 3)
sample_matrix1 = 1:9
dim(sample_matrix1) = c(3, 3)

sample_df1 = as.data.frame(sample_matrix1)
sample_df1
# Make a dataframe from matrix with named columns and rows.
sample_df2 = as.data.frame(sample_matrix1, row.names = c('Row1','Row2','Row3')) 
cols = c('Col1','Col2','Col3') # defining the column names
colnames(sample_df2) = cols   # assigning the column names to df

sample_df2



#=================================================-
#### Slide 19: Dataframes: row and column names  ####

# Check attributes of a dataframe.
attributes(sample_df1)

# Check the attributes of dataframe.
attributes(sample_df2)


#=================================================-
#### Slide 20: Dataframes: selecting columns  ####

# To access a column of a dataframe
# Option 1: Use `$column_name`.
sample_df2$Col1

# To access a column of a dataframe
# Option 2: Use `[[column_index]]`.
sample_df2[[1]]

# To access a column of a dataframe
# Option 3: Use `[ , column_index]`.
sample_df2[, 1]


#=================================================-
#### Slide 21: Dataframes: subsetting rows  ####

# To access a row of a dataframe
# Option 1: use `[row_index, ]`.
sample_df2[1, ]

# To access a row of a dataframe
# Option 2: use `["row_name", ]`.
sample_df2["Row1", ]


#=================================================-
#### Slide 22: Dataframes: accessing individual values  ####

# Option 1: 
# `data_frame$column_name[row_index]`
sample_df2$Col2[1]

# Option 2:
# `data_frame[[column_index]][row_index]`
sample_df2[[2]][1]

# Option 3: 
# `data_frame[row_index, column_index]`
sample_df2[1, 2]

# Option 4:
# `data_frame["row_name", "column_name"]`
sample_df2["Row1", "Col2"]


#=================================================-
#### Slide 23: Dataframes: adding new columns  ####

# To add a new column to a dataframe
# Option 1: use `$new_column_name`.
sample_df2$Col4 = "New column"
sample_df2
# To add new column(s) to a dataframe
# Option 2: use `cbind`.
sample_df2 = cbind(sample_df2,
                   Col5 = c("Yet another",
                            "new",
                            "column"))
sample_df2


#=================================================-
#### Slide 25: Dataframes: operations  ####

# Let's take our sample dataframe.
str(sample_df2)

# Add a number to each value in a column.
sample_df2$Col1 + 2

# Add a number to each value in a row.
sample_df2[1, ] + 2


#=================================================-
#### Slide 26: Special classes: factors  ####

# Let's take a look at the structure of the dataframe.
str(sample_df2)



#=================================================-
#### Slide 27: Special classes: dates  ####

# Let's make a dataframe.
special_data = data.frame(date_col1 = c("2018-01-01", #<- make a column with character strings
                                        "2018-02-01", #   in the format of date (YYYY-MM-DD)
                                        "2018-03-01"),
                          stringsAsFactors = FALSE)   #<- this option allows us to tell R 
                                                      #   to NOT interpret strings as `factors`
special_data

# Take a look at the structure.
# Notice both columns appear as `character` and not as `factor`.
str(special_data)



#=================================================-
#### Slide 28: Special classes: dates and basic formats  ####

# Let's make another vector with dates, but in 
# a different format.
new_dates = c("January 1, 2018",
              "February 1, 2018",
              "March 1, 2018")

# Let's add another column to the dataframe
# and save it as a Date with a special format.
special_data$date_col2 = as.Date(new_dates, 
                         format = "%B %d, %Y")
special_data



#=================================================-
#### Slide 29: Special values: `NA`  ####

# Let's add a column with a numeric vector.
special_data$num_col1 = c(1, 555, 3)

# Let's make the 2nd element in that column `NA`.
special_data$num_col1[2] = NA

# To check for `NA`s we use `is.na`.
is.na(special_data$num_col1[2])

# We can also use it to check the whole column/vector. 
# The result will be a vector of `TRUE` or `FALSE` with values corresponding to each element.
is.na(special_data$num_col1)


#=================================================-
#### Slide 30: Special values: `NULL`   ####

# To get rid of a column in a `data.frame` all 
# you have to do is set it to `NULL`.
special_data$num_col3 = NULL
special_data
# To check for `NULL`s use `is.null`.
is.null(special_data$num_col3)

# To check for `NULL`s use `is.null`.
is.null(special_data$num_col2)



#=================================================-
#### Slide 32: Exercise 1  ####




#=================================================-
#### Slide 36: R's working directory  ####

# To set working directory call `setwd` with the path to the folder.
setwd("~/Desktop/skillsoft-2021")

# To check the current working directory use `getwd`.
getwd()

# To set working directory call `setwd` with the path to the folder.
setwd("C:/Users/[your-user-name]/Desktop/skillsoft-2021")

# To check the current working directory use `getwd`.
getwd()


#=================================================-
#### Slide 38: Directory settings  ####

# Set `main_dir` to the location of your `skillsoft-2021` folder (for Mac/Linux).
main_dir = "~/Desktop/skillsoft-2021"

# Set `main_dir` to the location of your `skillsoft-2021` folder (for Windows).
main_dir = "C:/Users/[username]/Desktop/skillsoft-2021"

# Make `data_dir` from the `main_dir` and remainder of the path to data directory.
data_dir = paste0(main_dir, "/data")


#=================================================-
#### Slide 39: Directory settings  ####

# Make `data_dir` from the `main_dir` and
# remainder of the path to data directory.
data_dir = paste0(main_dir, "/data")

# Make `plots_dir` from the `main_dir` and
# remainder of the path to plots directory.
plot_dir = paste0(main_dir, "/plots")

# Set directory to data_dir.
setwd(data_dir)


#=================================================-
#### Slide 40: Directory settings  ####

# Set working directory to where the data is.
setwd(data_dir)
# Print working directory (Mac/Linux).
getwd()
# Print working directory (Windows).
getwd()


#=================================================-
#### Slide 41: Loading dataset into R: read CSV files  ####

# Set working directory to where the data is.
setwd(data_dir)

# To read a C[omma] S[eparated] V[alues] file into
# R you can use a simple command `read.csv`.
temp_heart_data = read.csv("temp_heart_rate.csv",    #<- provide file name
                           header = TRUE,            #<- if file has header set to TRUE
                           stringsAsFactors = FALSE) #<- read strings as characters, not as factors


#=================================================-
#### Slide 42: Viewing data in R  ####

# Inspect the structure of the data.
str(temp_heart_data)


#=================================================-
#### Slide 43: Viewing data in R  ####

head(temp_heart_data, 4) #<- Inspect the `head` (first 4 rows).


tail(temp_heart_data, 4) #<- Inspect the `tail` (last 4 rows).


#=================================================-
#### Slide 44: Viewing data in R  ####

View(temp_heart_data)


#=================================================-
#### Slide 46: Saving data: write CSV files  ####

# Let's save the first 10 rows of our data to a variable.
temp_heart_subset = temp_heart_data[1:10, ]
temp_heart_subset

# Set working directory to where the data is.
setwd(data_dir)

# Write data to a CSV file providing 3 arguments:
write.csv(temp_heart_subset,            #<- name of variable to save 
          "temp_heart_rate_subset.csv", #<- name of file where to save
          row.names = FALSE)            #<- logical value for row names


#=================================================-
#### Slide 48: Clearing objects from environment  ####

# List all objects in environment.
ls()
# Remove individual variable(s).
rm(X, x, this_is_a_valid_name, This.Is.Also.A.Valid.Name, unnamed_list) #<- example
rm(list=ls()) #<- actual command
# List all objects again to check.
ls()


#=================================================-
#### Slide 51: Exercise 2  ####




#######################################################
####  CONGRATULATIONS ON COMPLETING THIS MODULE!   ####
#######################################################
