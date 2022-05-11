#######################################################
#######################################################
############    COPYRIGHT - DATA SOCIETY   ############
#######################################################
#######################################################

## INTRO TO R AND VIZ PART 4 EXERCISES ##

## NOTE: To run individual pieces of code, select the line of code and
##       press ctrl + enter for PCs or command + enter for Macs


#### Exercise 1 ####
# =================================================-

#### Question 1 ####
# Select only year,name and count (`n`) from `babynames`.

# Answer:



#================================================-
#### Question 2 ####
# Now select the same columns, but by specifying which NOT to include in the subset.

# Answer:



#================================================-
#### Question 3 #### 
# Use the helper functions of `select` to find all columns that contain the letter `e`.

# Answer:


#================================================-
##### Question 4 ####
# Subset `babynames` to be all names from 2015, keep all columns, save the subset as babynames_small.
# Using the newly created subset and `mutate`, create a new column "rank" that ranks by the count (`n`). Save the new subset as `babynames_mutate`.

# Answer:




#================================================-
#### Question 5 ####
# Arrange the mutated dataset by rank descending, then by name. What is the rank,name and sex in the first row?

# Answer: 



#================================================-
#### Question 6 ####
# Now instead of the `babynames_mutate` subset, use a function that will simply create one column that gives you the rank of the counts - "RANK". Use the dataset `babynames_small`.

# Answer:




#### Exercise 2 ####
# =================================================-

#### Question 1 #### 
# Load the `tidyverse` package. (Install if you don't have it already)
# Install and load `babynames` package.
# (this dataset is native to R)
# Only using `summarise`, find the sum of `n`, name it "total_counts". 
# You will see that is not very useful... Let's try it with `group_by`.

# Answer: 



#================================================-
#### Question 2 ####
# Use `group_by` and `summarise` to find the sum of F and M names by year. 
# Name the final dataframe 'summary' and the variable 'by_year'.

# Answer:




#================================================-
#### Question 3 ####
# Perform the same summary function, this time subsetting the data to only 2010 and later. Also, arrange the output by year.
#	Use pipes this time. Name the new dataframe 'pipes'

# Answer:




#### Exercise 3 ####
# =================================================-


#### Question 1 ####
# For the following questions, we are going to create a dataframe for the purpose of using `separate` and `unite`
# Let us unite the date, hour, minute and second. Name this new dataset - `data_unite`.
set.seed(2)
date = as.Date('2016-01-01') + 0:14
hour = sample(1:24, 15)
min = sample(1:60, 15)
second = sample(1:60, 15)
event = sample(letters, 15)
data = tibble(date, hour, min, second, event)

# Answer:




#================================================-
#### Question 2 ####
# Let us now separate the `data_unite` into these columns: year, month, day, datetime, event.
# Answer:




#================================================-
#### Question 3 ####

# Read the fast_food_data.csv into a dataset named "fast_food_data". 
# Set both the `header` and `stringsAsFactors` arguments equal to TRUE. 
# Subset the dataset to be named "fast_food_subset" and include columns 3, 5, 6, 10, 11. 
# Then rename those columns "type", "calories","totfat","carbs", & "sugars".

# Answer: 




#================================================-
#### Question 4 ####

# Create a dataset `fast_food_num`, which consists of only the numeric variables from fast_food_subset. Hint: Drop the 'type' column.
# Then retrieve the number of columns from `fast_food_num` and store it in the variable `num_col`.

# Answer: 




#================================================-
#### Question 5 ####

# Make a boxplot of the variable `calories` in `fast_food_num`. 
# What is the approximate range of the variable 'calories`?
# Also make a histogram of the variable `calories` and appropriately label the xlabel and title.

# Answer: 




