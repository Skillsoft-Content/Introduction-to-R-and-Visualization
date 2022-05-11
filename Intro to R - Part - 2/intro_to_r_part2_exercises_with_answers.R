#######################################################
#######################################################
############    COPYRIGHT - DATA SOCIETY   ############
#######################################################
#######################################################

## INTRO TO R PART2 EXERCISE ANSWERS ##

## NOTE: To run individual pieces of code, select the line of code and
##       press ctrl + enter for PCs or command + enter for Macs


#### Exercise 1 ####
# =================================================-


#### Question 1 ####

# Create a list named 'state' with values 'New York', 'Illinois', and 'California'.
# Set the element names as 'Northeast', 'Midwest', and 'West' respectively.
# Inspect the list's structure.
# Print the value of 'West' index using the $ operator.


# Answer:
state = list('New York', 'Illinois', 'California')
names(state) = c('Northeast', 'Midwest', 'West')
str(state)
state$West

#================================================-
#### Question 2 ####

# Create a dataframe called 'ex_df' with 3 columns and 3 rows:
## Dataframe should have values: 1:3, 4:6, 7:9
## Define the column names as 'col1', 'col2', 'col3'
## Rename the rows as 'a','b','c'

# Answer:
ex_df = data.frame(1:3, 4:6, 7:9) # creating a dataframe
cols = c('col1','col2','col3') # defining column names
colnames(ex_df) = cols        # assigning column names

rows = c('a','b','c')   # defining row names
rownames(ex_df) = rows  # assigning column names

## Alternative solution
ex_df = data.frame(col1 = 1:3, 
            col2 = 4:6, 
            col3 = 7:9,
            row.names = c('a','b','c'))


#================================================-
#### Question 3 ####

# Check the row and column names of the `ex_df` dataframe
# Display the first 2 rows of the dataframe
# Display value at 'c' row and 'col2' in 'ex_df'

# Answer: 
attributes(ex_df)
ex_df[1:2,]
ex_df['c','col2']

#================================================-
#### Question 4 ####

# Add 20 to each value of col2 in 'ex_df'

# Answer:
ex_df$col2 + 20 

#================================================-
#### Question 5 ####

# Create a vector named `date_vec` of three dates in %d-%b-%y format.
# The three dates should be:
# March 3, 2010
# April 4, 2011
# June 22, 2012
# Again, they should not be in this format but rather the %d-%b-%y format.

# Answer:
date_vec = c( "03-MAR-10","04-APR-11","22-JUN-12")
date_vec

#================================================-
#### Question 6 ####

# Using the `$` operator, assign `date_vec` to a new column, col4, in `ex_df`.
# Make sure to use `as.Date` to ensure its format is recognized.
# Check the structure of `ex_df`.

# Answer:
ex_df$col4 = as.Date(date_vec, format = "%d-%b-%y")
str(ex_df)


#================================================-
#### Question 7 ####

ex_df$col5 = c("lets", NA, "try")

# For which row will col5 return TRUE for using is.na?
# Use is.na to confirm.

# Answer: row b
is.na(ex_df$col5)

#================================================-
#### Question 8 ####

# Remove col5 from `ex_df` by setting it equal to NULL.
# Confirm col5 removal from `ex_df`.

# Answer:

ex_df$col5 = NULL
attributes(ex_df)


#### Exercise 2 ####
# =================================================-


#### Question 1 ####

# Clear the environment of variables from previous exercises using `rm`, `list`, and `ls`.
# Use "?rm" to refresh your knowledge of its usage.

# Answer:
?rm
rm(list = ls())

#================================================-
#### Question 2 ####

# Check your working directory to confirm it is the same for exercises as you have used during class.
# If your working directory is not the data directory used in class, please set it now.
# What is the name of the file that starts with the letter f?

# Answer: `fast_food_data.csv`
getwd()
setwd()  #<- students answer here will be unique
# Students can look in the Files window to confirm the file name once setting the correct working directory
# Or students can check using R commands:
list.files(pattern="F")


#================================================-
#### Question 3 ####

# Use `read.csv` to read `fast_food_data.csv` into R and name it `fastfood`. 
# Set headers to TRUE and do not read in strings as factors.
# What is the class of `fastfood`?

# Answer: dataframe
fastfood = read.csv("fast_food_data.csv",     #<- provide file name
                    header = TRUE,            #<- if file has header set to TRUE
                    stringsAsFactors = FALSE) #<- read strings as characters. 
class(fastfood)

#================================================-
#### Question 4 ####

# Inspect the structure, attributes, and dimensions of `fastfood`.
# How many rows and columns does fastfood have?

# Answer: 126 rows and 13 columns.
str(fastfood)
dim(fastfood)
attributes(fastfood)

#================================================-
#### Question 5 #### 

# What's the difference in protein content between the 12th and 56th observation?
# What's the type of item 12 and item 56? 
# What is the specific item of each?

# Answer: "Protein" is the 12th column in the dataframe. Inspecting the entries at rows 12 and 56 in column 12 shows a -56 difference between items.
fastfood[12, 12] - fastfood[56, 12]

# Both items are Burgers. One is a bacon double cheese burger and the other is a hamburger. There are multiple ways to reference specific entries.
fastfood[12, ]$Type
fastfood[56, ]$Type
fastfood[12, ]$Item
fastfood[56, ]$Item

#================================================-
#### Question 6 ####

# Create a subset of `fastfood` named `fastfood_sub` that contains rows 12:56 and the columns 
# "Fast.Food.Restaurant", "Item", "Type", "Protein..g.", and "Total.Fat..g.".
# Hint: Start by creating a vector of column names you wish to keep.

# Answer:
keep = c("Fast.Food.Restaurant", "Item", "Type", "Protein..g.", "Total.Fat..g.")
fastfood_sub = fastfood[12:56, keep]

#================================================-
#### Question 7 ####

# Use `head` and `tail` to return only the top and last observation of `fastfood_sub`.
# Which restaurant made each burger?

# Answer: Burger King and Sonic.
head(fastfood_sub, 1)
tail(fastfood_sub, 1)

#================================================-
#### Question 8 ####

# Save `fastfood_sub` to your data directory as "fast_food_subset.csv".

# Answer: 

# Set working directory to where the data is.
setwd() #<- will vary

# Write data to a CSV file providing 3 arguments:
write.csv(fastfood_sub,            #<- name of variable to save 
          "fast_food_subset.csv", #<- name of file where to save
          row.names = FALSE)  

#================================================-
#### Question 9 ####

# Delete "fast_food_subset.csv" from your data directory.
# Answer:
# Students can manually delete the file from the File window in RStudio.
# Or students can use the following code:
file.remove("fast_food_subset.csv")


