#######################################################
#######################################################
############    COPYRIGHT - DATA SOCIETY   ############
#######################################################
#######################################################

## INTRO TO R PART1 ##

## NOTE: To run individual pieces of code, select the line of code and
##       press ctrl + enter for PCs or command + enter for Macs


#=================================================-
#### Slide 16: Working with R: comments  ####

# This is a typical comment in R.
# You don't need a hashmark at 
# the end of the line.
# You can add as many as you want,
# just be sure to read them afterwards :)

A = 2 + 5 #<- you can also add comments
B = A + 3 #<- to the end of the code lines


#=================================================-
#### Slide 18: Basic calculations and operations  ####

# Add whole numbers.
1 + 2

# Add numbers with decimals.
3.23 + 4.65
# Subtract whole numbers.
10 - 7

# Subtract numbers with decimals.
3.23 - 4.65


#=================================================-
#### Slide 19: Basic calculations and operations  ####

# Multiply whole numbers.
1 * 2

# Multiply numbers with decimals.
3.23 * 4.65
# Divide whole numbers.
9 / 3

# Divide numbers with decimals.
3.23 / 4.65


#=================================================-
#### Slide 20: Basic calculations and operations  ####

# Take square root of a number with.
sqrt(100)

# Take square root of an expression.
sqrt(7 * 5)
# Raise number to a power with `^`.
9 ^ 3

# Raise number to a power with `**`.
9 ** 3

# Raise expression to a power.
(3.23 / 4.65)^2


#=================================================-
#### Slide 21: Basic calculations and operations  ####

# Get remainder from division.
7 %% 3

# Get remainder from division.
4 %% 2
# Perform integer division.
7 %/% 3

# Perform integer division.
4 %/% 2


#=================================================-
#### Slide 23: Variables and assignment operators  ####

# Define a variable using `<-` 
# as an assignment operator.
A <- 3  
A

# Define a variable using `=` 
# as an assignment operator.
B = 2 + 5
B


#=================================================-
#### Slide 24: Operations with variables  ####

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
#### Slide 25: Other operators: comparison  ####

# Check variables are equal.
A == B

# Check if variables are not equal.
A != B

# Check if one is greater than the other.
A > B
# Check if one is greater than or equal to 5.
A >= 5

# Check if one is less than or equal to 3.
A <= 3

# Check if one is smaller than the other.
A < B


#=================================================-
#### Slide 27: Grouping multiple operations with variables  ####

# You can group several operations into
# a single one.
((D - C) * 2) ^ (1 / 3)
# This is equivalent to a series of steps 
# like ones below.
step1 = D - C
step1

step2 = step1 * 2
step2

step3 = 1 / 3
step3

step4 = step2 ^ step3
step4


#=================================================-
#### Slide 28: Grouping multiple operations with variables  ####

# You can group several operations into a single one.
((D - C) * 2) ^ (1 / 3)

# Be careful with your operators and your parentheses, the following expression 
# will not return the same result as the one above!
((D - C) * 2) ^ 1 / 3


#=================================================-
#### Slide 30: Variable value re-assignment  ####

# 1. Create a variable and assign 67 to it.
this_variable = 67
this_variable

# 2. Create another variable and assign -54.
that_variable = -54
that_variable

# 3. Calculate their sum.
this_variable + that_variable
# 4. Re-assign a value to `this_variable`.
this_variable = 35
this_variable

# 5. Add two variables and store the result 
#    in `that_variable`.
that_variable = this_variable + that_variable
that_variable


#=================================================-
#### Slide 32: Naming variables and functions  ####

this_is_a_valid_name = -5
this_is_a_valid_name

This.Is.Also.A.Valid.Name = 3
This.Is.Also.A.Valid.Name

.another.valid.name3 = -Inf
.another.valid.name3


#=================================================-
#### Slide 33: Naming variables and functions: CAUTION  ####

# R is case sensitive!
X = 35.5 #<- this `X`
X

x = -9   #<- is not the same as this `x`
x


#=================================================-
#### Slide 36: Exercise 1  ####




#=================================================-
#### Slide 41: Basic data classes: integer  ####

# Create an integer type variable.
integer_var = 34L

# Check type of variable.
typeof(integer_var)

# Check if the variable is integer.
is.integer(integer_var)

# Check length of variable 
# (i.e. how many entries).
length(integer_var)


#=================================================-
#### Slide 42: Basic data classes: numeric  ####

# Create a numeric class variable.
numeric_var = 24.24
typeof(numeric_var)
# Check length of variable 
# (i.e. how many entries).
length(numeric_var)


#=================================================-
#### Slide 43: Basic data classes: character  ####

# Create a character class variable.
character_var = "Hello"
# Check if the variable is character.
is.character(character_var)

# Check metadata/attributes of variable.
attributes(character_var)

# Check length of variable 
# (i.e. how many entries).
length(character_var)


#=================================================-
#### Slide 44: Some useful character operations  ####

# Create another character class variable.
case_study = "JUmbLEd CaSE"

# Convert a character string to lower case.
tolower(case_study)

# Convert a character string to upper case.
toupper(case_study)

# Count number of characters in a string.
nchar(case_study)

# Compare to the output of the `length` command.
length(case_study)

# Get just a part of character string.
substr(case_study, #<- original string
       1,          #<- start index of substring
       7)          #<- end index of substring


#=================================================-
#### Slide 45: Basic data classes: logical  ####

# Create a logical class variable.
logical_var = TRUE

# Check type of variable.
typeof(logical_var)



#=================================================-
#### Slide 47: Exercise 2  ####




#=================================================-
#### Slide 51: Basic data structures: atomic vectors  ####

# To make an empty vector in R, 
# you have a few options:
# Option 1: use `vector()` command.
# The default in R is an empty vector of 
# `logical` mode!
vector()

# Option 2: use `c()` command 
# (`c` stands for concatenate).
# The default empty vector produced by `c()` 
# has a single entry `NULL`!
c()

# Make a vector from a set of char. strings
c("My", "name", "is", "Vector")

# Make a vector out of given set of numbers
c(1, 2, 3, 765, -986, 0.5)


#=================================================-
#### Slide 52: Basic data structures: atomic vectors  ####

# Create a vector of mode `character` from 
# pre-defined set of character strings.
character_vec = c("My", "name", "is", "Vector")
character_vec

# Check if the variable is character.
is.character(character_vec)

# Check metadata/attributes of variable.
attributes(character_vec)

# Check length of variable 
# (i.e. how many entries).
length(character_vec)


#=================================================-
#### Slide 53: Basic data structures: access vectors values  ####

# To access an element inside of the
# vector use `[]` and the index of the element.
character_vec[1]

# To access multiple elements inside of
# a vector use the start and end indices
# with `:` in-between.
character_vec[1:3]

# A special form of a vector in R is a sequence.
number_seq = seq(from = 1, to = 5, by = 1)
number_seq

# Check class.
class(number_seq)

# Subset the first 3 elements.
number_seq[1:3]


#=================================================-
#### Slide 54: Basic data structures: operations on vectors  ####

number_seq      #<- Let's take our vector.


number_seq + 5  #<- Add a number to every entry.


number_seq - 5  #<- Subtract a number from every entry.


number_seq * 2  #<- Multiply every entry by a number.

# To sum all elements use `sum`.
sum(number_seq)

# To multiply all elements use `prod`.
prod(number_seq)

# To get the mean of all vector 
# values use `mean`.
mean(number_seq)

# To get the smallest value
# in a vector use `min`.
min(number_seq)



#=================================================-
#### Slide 55: Basic data structures: appending & naming  ####

# To name each entry in a vector use `names`.
names(number_seq) = c("First", "Second", 
                      "Third", "Fourth", 
                      "Fifth")

# Check the attributes of vector.
attributes(number_seq)

# Check the length of vector.
length(number_seq)
# To append elements to a vector, just
# wrap the vector and additional element(s)
# into `c` again!
character_vec = c(character_vec, "!")
character_vec


#=================================================-
#### Slide 56: Basic data structures: why ATOMIC vectors?  ####

# Create a vector with entries of different type.
atomic_vec = c(333, "some text", TRUE, NULL)
atomic_vec

# Check class of the resulting vector.
class(atomic_vec)


#=================================================-
#### Slide 58: Basic data structures: making matrices  ####

# Create a matrix with 3 rows and 3 columns.
sample_matrix1 = matrix(nrow = 3, #<- n rows
                        ncol = 3) #<- m cols
sample_matrix1

# Notice that by default an empty matrix 
# will be filled with `NA`s.

# Check matrix dimensions.
dim(sample_matrix1)

# Notice that the `length` command will produce
# the total number elements in the matrix 
# (length = n rows x m cols).
length(sample_matrix1)

# Another way to create a matrix is to make
# it out of a vector of numbers.
sample_matrix2 = 1:9 #<- another way to make
                     #   a sequence of numbers!

# Assign dimensions to matrix:
# 1st number is for rows, 2nd is for columns.
dim(sample_matrix2) = c(3, #<- n rows
                        3) #<- m cols

sample_matrix2

# Check matrix dimensions.
dim(sample_matrix1)


#=================================================-
#### Slide 59: Basic data structures: making matrices  ####

# Create a matrix from a sequence of numbers
# with 3 rows & 3 columns.
sample_matrix3 = matrix(1:9,      #<- entries
                        nrow = 3, #<- n rows
                        ncol = 3) #<- m cols
sample_matrix3

# Create a matrix from a sequence of numbers
# with 3 rows & 3 columns arranged by row.
sample_matrix4 = matrix(1:9, 
                        nrow = 3, 
                        ncol = 3,
                        byrow = TRUE)
sample_matrix4


#=================================================-
#### Slide 60: Basic data structures: working with matrices  ####

# Check type of variable.
typeof(sample_matrix4)

# Check class of variable.
class(sample_matrix4)

# Check if the variable of type `integer`.
is.integer(sample_matrix4)

# Check metadata/attributes of variable.
attributes(sample_matrix4)


#=================================================-
#### Slide 61: Basic data structures: working with matrices  ####

# To append rows to a matrix, use `rbind`.
new_matrix1 = rbind(sample_matrix4,
                    10:12)
new_matrix1

# To append columns to a matrix, use `cbind`.
new_matrix2 = cbind(sample_matrix3,
                    10:12)
new_matrix2

# To access an element of a matrix use
# the row and column indices separated
# by a comma inside of `[]`.
new_matrix1[1, 2] #<- element in row 1, col 2

# To access a row leave the space in
# column index empty.
new_matrix1[1 , ] 

# To access a column leave the space in
# row index empty.
new_matrix1[ , 2] 


#=================================================-
#### Slide 62: Basic data structures: operations on matrices  ####

# Let's take a sample matrix.
sample_matrix2

# Add a number to every entry.
sample_matrix2 + 5

# Multiply every entry by a number.
sample_matrix2 * 2

# To sum all elements use `sum`.
sum(sample_matrix2)

# To multiply all elements use `prod`.
prod(sample_matrix2)

# To get the mean of all matrix 
# values use `mean`.
mean(sample_matrix2)

# To get the smallest value
# in a matrix use `min`.
min(sample_matrix2)



#=================================================-
#### Slide 63: Basic data structures: names & attributes  ####

# To name columns of a matrix use `colnames`.
colnames(sample_matrix2) = c("Col1", "Col2", "Col3")

# To name rows of a matrix use `rownames`.
rownames(sample_matrix2) = c("Row1", "Row2", "Row3")
sample_matrix2

# Check the attributes of a matrix.
attributes(sample_matrix2)


#=================================================-
#### Slide 65: Exercise 3  ####




#######################################################
####  CONGRATULATIONS ON COMPLETING THIS MODULE!   ####
#######################################################
