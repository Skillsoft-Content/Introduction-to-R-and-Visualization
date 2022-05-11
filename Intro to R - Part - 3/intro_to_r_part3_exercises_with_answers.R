#######################################################
#######################################################
############    COPYRIGHT - DATA SOCIETY   ############
#######################################################
#######################################################

## INTRO TO R PART3 EXERCISE ANSWERS ##

## NOTE: To run individual pieces of code, select the line of code and
##       press ctrl + enter for PCs or command + enter for Macs


#### Exercise 1 ####
# =================================================-

#### Question 1 ####

# Create a vector of column indices named "column_keep" with columns 24:26 and 52:55 using `c`.
# Subset CMP using `column_keep` to retain the specified columns in a smaller dataset named `sub_cmp`.
# Confirm the structure of `sub_cmp`. 
# How many columns are in `sub_cmp`? How many columns are integers?

# Answer: 7 columns, 1 column of integers.
column_keep = c(24:26, 52:55)
sub_cmp = CMP[ , column_keep]
str(sub_cmp)

#================================================-
#### Question 2 ####

# Summarize the variables in `sub_cmp`.
# Which variable has the most NA's?

# Answer: ManufacturingProcess11
summary(sub_cmp)

#================================================-
#### Question 3 ####

# Create a list of logical values where NA's in ManufacturingProcess11 are TRUE.
# Save this list of logical values to a variable names `also_na`.
# Use `which` to find the row indexes of the NA values and save that list of row indexes to `idofnas`.

# Answer:
also_na = is.na(sub_cmp$ManufacturingProcess11)
idsofnas = which(also_na)

#================================================-
#### Question 4 ####

# Compute the mean of the `ManufacturingProcess11` with the NAs removed.

# Answer:
mean_process11 = mean(sub_cmp$ManufacturingProcess11, na.rm = TRUE)
mean_process11

#================================================-
#### Question 5 ####

# Assign the mean to the entry(s) with the `NA` in ManufacturingProcess11.
# Check the result.

# Answer:
sub_cmp$ManufacturingProcess11[idsofnas] = mean_process11
sub_cmp$ManufacturingProcess11[idsofnas]



#### Exercise 2 ####
# =================================================-

#### Question 1 ####

temp_var = c(24, 26, 4, 12, 52, 3, 16)

# Write an `ifelse` statement that states:

# If entries in `temp_var` is greater than 15
#   Then subtract 15 from `temp_var`
# Otherwise return temp_var unchanged.

# Answer:
ifelse(temp_var > 15, temp_var - 15, temp_var)

#================================================-
#### Question 2 ####

vec1 = c(24, 26, 4, 12, 52, 3, 16)

# Find the length of `vec1` and store it a variable `vec1_len`.

# Answer: 7 
vec1_len = length(vec1)
vec1_len

#================================================-
#### Question 3 ####

# Write the first part of the for loop for `i` from 1 to `vec1_len`, 
# with closed curly braces at the end.

# Answer:
for(i in 1:vec1_len){
  
}

#================================================-
#### Question 4 ####

# Update the code from Question 1 to make the `ifelse` statement dynamic. 
# Replace `temp_var` with `vec1[i]`.
# Then assign `vec1[i]` to equal the output of the `ifelse` statement.

# Answer:
ifelse(vec1[i] > 15, vec1[i] - 15, vec1[i])

vec1[i] = ifelse(vec1[i] > 15, vec1[i] - 15, vec1[i])

#================================================-
#### Question 5 ####

# Combine the answers for Question 3 and Question 4 to create a completed for loop.
# Execute the code.
# What is the new value of the first entry in `vec1`?

# Answer: 9
for(i in 1:vec1_len){
  vec1[i] = ifelse(vec1[i] > 15, vec1[i] - 15, vec1[i])
}

vec1[1]

#================================================-
#### Question 6 ####


vec1 = c(24, 26, 4, 12, 52, 3, 16)

# Adjust the code from Question 5 to create a new vector, `vec2`, that 
# assigns the transformed version of `vec1` created by the for loop to `vec2` and `vec1` maintains its original value.
# Confirm that the value of the first entry in `vec1` remains the same and that the value of the first entry in `vec2` equals nine.

# Answer:
vec2 = c()

for(i in 1:vec1_len){
    vec2[i] = ifelse(vec1[i] > 15, vec1[i] - 15, vec1[i])
}

vec1[1]
vec2[1]

#================================================-
#### Question 7 ####

namelist = c("Susie", "Nick", "Kate", "Simon", "Jamal", "Eduardo")

# Create a function named `Greetings` that takes a `listofnames` as an argument.
# The function should go through a vector of names one by one, and print:

# "Welcome to coding in RStudio, NAME!" 

# Where NAME is the entry in `listofnames` vector.
# Hint: You will need to use `length`, `paste0`, `print`, and a `for` loop.

# Answer:

Greetings = function(listofnames){
  
  for(i in 1:length(listofnames)){
    
    greet_name = paste0("Welcome to coding in RStudio, ", #<- concatenate "Hello "
                        listofnames[i],                   #<-  with the `name` from function argument, and
                        "!")                              #<-  with the remainder of the message to print
    
    print(greet_name)
  }
}

#================================================-
#### Question 8 ####

# Execute `Greetings` using `namelist`.

# Answer:
Greetings(namelist)


#### Exercise 3 ####
# =================================================-

#### Question 1 ####
# Load the `tidyverse` package. (Install if you don't have it already)
# Install and load `babynames` package.
# (this dataset is native to R)
# Filter all values in `babynames` that year is 2015.

# Answer:
library(tidyverse)
install.packages("babynames")
library(babynames)
filter(babynames, year == 2015)

#================================================-
#### Question 2 ####
# Filter all values in babynames that year is 2015 and sex is F.

# Answer:
filter(babynames,year == 2015,sex == 'F')

#================================================-
#### Question 3 ####
#Filter all values that are below 1000 counts (`n`) and that are between 1947-1975.

# Answer:
filter(babynames, n < 1000, year >= 1947, year <= 1975)

#================================================-
#### Question 4 ####
# Filter all values that are either sex is F or n is above 1000 counts, all in 1975.

# Answer:
filter(babynames, year == 1975, (sex == 'F' | n > 1000))


#### Question 5 #### 
# Arrange `babynames` by year in descending order.

# Answer:
arrange(babynames, desc(year))

#================================================-
#### Question 6 ####
# Now arrange by year then by sex. What are the name and year in row 1?

# Answer: Name: Mary, Year: 1880
arrange(babynames, year, sex)

#================================================-
#### Question 7 ####
# Now arrange by sex, year, and name descending. What is the name in the first row?

# Answer: Zula
arrange(babynames, sex, year, desc(name))



