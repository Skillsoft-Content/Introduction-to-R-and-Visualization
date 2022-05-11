#######################################################
#######################################################
############    COPYRIGHT - DATA SOCIETY   ############
#######################################################
#######################################################

## INTRO TO R PART1 EXERCISE ANSWERS ##

## NOTE: To run individual pieces of code, select the line of code and
##       press ctrl + enter for PCs or command + enter for Macs


#### Exercise 1 ####
# =================================================-

#### Question 1 ####

# Add 3 and 5.
# Add -10.56 and 99.679

# Answer:
3 + 5

-10.56 + 99.679


#================================================
#### Question 2 ####

# Subtract 67 from 666.
# Subtract -67 from 89.

# Answer:
666 - 67

89 - (-67)


#================================================
#### Question 3 ####

# Multiply 555 by 444.
# Multiply -5.5 by 0.32.

# Answer:
555 * 444

-5.5 * 0.32

#================================================
#### Question 4 ####

# Divide 20 by 65.
# Divide 0.333 by 0.999.

# Answer:
20 / 65

0.333 / 0.999


#================================================
#### Question 5 ####

# Take the square root of 125.
# Take the square root of the product of 64 and 8.
# Take the square root of -9.

# Answer:
sqrt(125)

sqrt(64 * 8)

sqrt(-9)

# What do you get in return? Why do you think you got this as the output?

# Answer: You should get a warning message that says:

## Warning message:
## In sqrt(-9) : NaNs produced

# and a `NaN` instead of a value.
# This happens because taking a square root of a negative number does not produce a real number!



#================================================
#### Question 6 ####
# Raise 6 to the 10th power.
# Raise a sum of 95 and -7 to the 3rd power.

# Answer:
6^10

(95 + (-7))^3

# Also a correct answer:
6**10

(95 + (-7))**3

#================================================
#### Bonus question ####
# Take the cube root of 1000

# Answer: 
1000^(1/3)

# Also a correct answer:
1000**(1/3)

# Why does this work?

# Answer: 
# The root of an operation is also a power, but instead
# of raising the number into a power > 1, we raise it
# to a fraction. Square root is equivalent to raising
# a number to (1/2)th power.


#================================================
#### Question 7 ####

# What is the remainder when we divide 5 by 2?
# What is the remainder when we divide 6 by 7?
# How many times can we fit 8 into 999?
# What is the biggest integer we get if we divide 24 by -12?

# Answer: 1
5 %% 2

# Answer: 6
6 %% 7

# Answer: 124
999 %/% 8

# Answer: -2
24 %/% (-12)


#================================================
#### Question 8 ####

# Make a variable called `var_1` and let it be equal to a sum of 100 and 65.
# Make a variable called `var_2` and let it be equal a product of 3 and 1/2.
# Hint: when you create a new variable, make sure you view what it is equal to 
# in console and / or environment pane.

# Answer:
var_1 = 100 + 65
var_1

var_2 = 3*(1/2)
var_2

#================================================
#### Question 9 ####

# Make a variable called `var_3`, which is a result of division of `var_1` by `var_2`.
# Make a variable called `var_4` and set it equal to 110.

# Answer:
var_3 = var_1 / var_2
var_3

var_4 = 110
var_4

#================================================
#### Question 10 ####

# Compare `var_4` to `var_3`. Are they equal?
# Compare `var_1` to `var_4`. Is `var_4` greater than `var_1`?
# Compare `var_1` to `var_2`. Is `var_1` greater than `var_2`?
# Compare `var_2` to `var_3`. Is `var_2` at least as big as `var_3`?
# Compare `var_4` to `var_3`. Is `var_4` at most as big as `var_3`?

# Answer:
var_4 == var_3

var_4 > var_1

var_1 > var_2

var_2 >= var_3

var_3 >= var_4

# Also correct answer:
var_1 < var_4

var_2 < var_1

var_3 <= var_2

var_4 <= var_3

#================================================
#### Question 11 ####

# Make a variable called `temp_var` and set it equal to 10^3.
# Divide it by 10 and save it to itself. What is `temp_var` now equal to?
# Can we retrieve the initial value of `temp_var`?

# Answer:
temp_var = 10^3

# Answer: 100
temp_var = temp_var / 10
temp_var

# Answer: No, the original value of `temp_var` was overwritten by our operation on itself. 

#================================================
#### Question 12 ####

# Make a variable `Temp_Var` and assign it to the negative third power of 5.
# Can we still retrieve the value assigned to `temp_var`? If yes, then what is it?

# Answer: 
Temp_Var = 5^(-3)
Temp_Var

# Answer: Yes. These two variables, temp_var and Temp_Var, are DIFFERENT because R is case sensitive. 
# The value is still 100.


#================================================
#### Question 13 ####

# Make a variable called `007Agent` and assign this character string to it: "Bond, James Bond".
007Agent = "Bond, James Bond"

# Answer: You should get an error:
## Error: unexpected symbol in "007Agent"

# This happens because R does not allow variable names that start with a number!
# If you switch the order of the numbers and the characters around, R will let you name the variable.
# Besides, Agent007 sounds better anyway :)
Agent007 = "Bond, James Bond"
Agent007


#================================================
#### Bonus question ####

# How many different remainders can we get from dividing any number by 2?

# Answer: 2

# What are they?

# Answer: 0 and 1

# Why is that?

# Answer: If the number is even, the remainder will always be 0, if the number is odd,
# the remainder will always be 1.





#### Exercise 2 ####
# =================================================-



#================================================
#### Question 1 ####

# Create a logical variable named `logvar` and assign it the value FALSE.
# Confirm the type of variable for logvar.
# Then convert the logical variable to a character variable named `new_char2`.
# Check the value of the new variable in the Global Environment. 
# Then confirm the class of the new variable.

# Answer: 
logvar = FALSE
typeof(logvar)
new_char2 = as.character(logvar)
class(new_char2)

#================================================-
#### Question 2 ####

test = 234.3

# What is the class of the `test` variable?
# What is the type of the `test` variable?
# Convert `test` to an `integer` and assign it to variable `test2`.
# Then confirm the new class of `test2`.

# Answer: numeric and double.
class(test)
typeof(test)
test2 = as.integer(test)
class(test2)



#### Exercise 3 ####
# =================================================-


#================================================-
#### Question 1 ####

# Create a numeric vector named `numvec` that contains the values 2.3, 4, 5.63, and 4.623.
# Return the values of `numvec`.
# Convert the vector `numvec` to a vector of integers named `intvec`.
# Then confirm if the vector contains integers or not. 
# The answer should be either TRUE or FALSE.

# Answer: TRUE
numvec = c(2.3, 4, 5.63, 4.623)
numvec
intvec = as.integer(numvec)
is.integer(intvec)

#================================================-
#### Question 2 ####

# Check how many items are in `intvec`.
# Then append the values 7, 14, and 8 to the vector `intvec`.
# Check the length of intvec again. What changed?

# Answer: length increased by 3.
length(intvec)
intvec = c(intvec, 7, 14, 8)
length(intvec)

#================================================-
#### Question 3 ####

# Add the value 3 to all values in `intvec` and assign it back to the variable 'intvec'

# Answer:
intvec + 3

#================================================-
#### Question 4 ####

# Create another vector named `seqvec` that starts at 2, ends at 14, and the numbers increase by 2.
# What is the length of `seqvec`?
# Assign the result of subtracting `intvec` from `seqvec` to the vector `resvec`. 

# Answer: 7
seqvec = seq(from = 2, to = 14, by = 2)
seqvec
length(seqvec)
resvec = seqvec - intvec
resvec

#================================================-
#### Question 5 ####

# What is the product of resvec?
# What is the minimum value in resvec?
# What is the mean of resvec?

# Answer: 0, -2, 1.714286
prod(resvec)
min(resvec)
mean(resvec)


#================================================-
#### Question 6 ####

# Bind the vectors `intvec`, `seqvec`, and `resvec` together as columns to create `matrix_c`.
# Separately bind the vectors together as rows to create `matrix_r`.
# Confirm the class of both `matrix_c` and` matrix_r`.
# How many rows and columns are there in `matrix_c` and `matrix_r` ?

# Answer: The class for both should be "matrix".
matrix_c = cbind(intvec, seqvec, resvec) #<- cbind binds as columns
matrix_r = rbind(intvec, seqvec, resvec) #<- rbind binds as rows

class(matrix_c)
class(matrix_r)

# `matrix_c` has 7 rows and 3 columns. `matrix_r` has 3 rows and 7 columns.
dim(matrix_c)
dim(matrix_r)

#================================================-
#### Question 7 ####

# Check the type of matrix (hint: is it numeric, character, integer?)

# Answer:
is.integer(matrix_r)
is.numeric(matrix_r)

#================================================-
#### Question 8 ####

# Check the attributes of `matrix_c`. 
# Which dimension of `matrix_c` has names? Rows or columns?
# Rename the columns in `matrix_c` to be "var1", "var2", and "var3".

# Answer: columns
attributes(matrix_c)
colnames(matrix_c) = c("var1", "var2", "var3")
matrix_c


#================================================-
#### Question 9 ####

# Return a matrix that is a 2x2 subset of `matrix_c` starting at the upper left corner of `matrix_c`.
# Name this new matrix `mat_sub`.
# Confirm the class of `mat_sub`.
# What is the average value of `mat_sub`?

# Answer: 3
mat_sub = matrix_c[1:2, 1:2] #<- use : to create a continuous subset
class(mat_sub)
mean(mat_sub)


