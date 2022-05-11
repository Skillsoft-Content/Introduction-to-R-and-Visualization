#######################################################
#######################################################
############    COPYRIGHT - DATA SOCIETY   ############
#######################################################
#######################################################

## INTRO TO R PART2 EXERCISES ##

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



#================================================-
#### Question 2 ####

# Create a dataframe called 'ex_df' with 3 columns and 3 rows:
## Dataframe should have values: 1:3, 4:6, 7:9
## Define the column names as 'col1', 'col2', 'col3'
## Rename the rows as 'a','b','c'

# Answer:



#================================================-
#### Question 3 ####

# Check the row and column names of the `ex_df` dataframe
# Display the first 2 rows of the dataframe
# Display value at 'c' row and 'col2' in 'ex_df'

# Answer: 



#================================================-
#### Question 4 ####

# Add 20 to each value of col2 in 'ex_df'

# Answer:



#================================================-
#### Question 5 ####

# Create a vector named `date_vec` of three dates in %d-%b-%y format.
# The three dates should be:
# March 3, 2010
# April 4, 2011
# June 22, 2012
# Again, they should not be in this format but rather the %d-%b-%y format.

# Answer:



#================================================-
#### Question 6 ####

# Using the `$` operator, assign `date_vec` to a new column, col4, in `ex_df`.
# Make sure to use `as.Date` to ensure its format is recognized.
# Check the structure of `ex_df`.

# Answer:




#================================================-
#### Question 7 ####

ex_df$col5 = c("lets", NA, "try")

# For which row will col5 return TRUE for using is.na?
# Use is.na to confirm.

# Answer: 



#================================================-
#### Question 8 ####

# Remove col5 from `ex_df` by setting it equal to NULL.
# Confirm col5 removal from `ex_df`.

# Answer:




#### Exercise 2 ####
# =================================================-


#### Question 1 ####

# Clear the environment of variables from previous exercises using `rm`, `list`, and `ls`.
# Use "?rm" to refresh your knowledge of its usage.

# Answer:



#================================================-
#### Question 2 ####

# Check your working directory to confirm it is the same for exercises as you have used during class.
# If your working directory is not the data directory used in class, please set it now.
# What is the name of the file that starts with the letter f?

# Answer: 




#================================================-
#### Question 3 ####

# Use `read.csv` to read `fast_food_data.csv` into R and name it `fastfood`. 
# Set headers to TRUE and do not read in strings as factors.
# What is the class of `fastfood`?

# Answer: 



#================================================-
#### Question 4 ####

# Inspect the structure, attributes, and dimensions of `fastfood`.
# How many rows and columns does fastfood have?

# Answer: 



#================================================-
#### Question 5 #### 

# What's the difference in protein content between the 12th and 56th observation?
# What's the type of item 12 and item 56? 
# What is the specific item of each?

# Answer:




#================================================-
#### Question 6 ####

# Create a subset of `fastfood` named `fastfood_sub` that contains rows 12:56 and the columns 
# "Fast.Food.Restaurant", "Item", "Type", "Protein..g.", and "Total.Fat..g.".
# Hint: Start by creating a vector of column names you wish to keep.

# Answer:




#================================================-
#### Question 7 ####

# Use `head` and `tail` to return only the top and last observation of `fastfood_sub`.
# Which restaurant made each burger?

# Answer: 



#================================================-
#### Question 8 ####

# Save `fastfood_sub` to your data directory as "fast_food_subset.csv".

# Answer: 




#================================================-
#### Question 9 ####

# Delete "fast_food_subset.csv" from your data directory.
# Answer:



