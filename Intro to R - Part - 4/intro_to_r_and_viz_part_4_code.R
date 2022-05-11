#######################################################
#######################################################
############    COPYRIGHT - DATA SOCIETY   ############
#######################################################
#######################################################

## INTRO TO R AND VIZ PART 4 ##

## NOTE: To run individual pieces of code, select the line of code and
##       press ctrl + enter for PCs or command + enter for Macs


#=================================================-
#### Slide 4: Recap: Installing packages  ####

install.packages("tidyverse")   #<- Install package 
library(tidyverse)              #<- Load the package into the environment.
library(help = "tidyverse")     #<- View package documentation.


#=================================================-
#### Slide 6: Recap: Installing packages and loading data  ####

#install.packages("nycflights13")
library(nycflights13)


#=================================================-
#### Slide 8: Select  ####

# Check for detailed documentation
?dplyr::select

# Use cases for `select` function
select(df,           #<- dataframe 
       select_cond1, #<- selection rule(s)
       ...)


#=================================================-
#### Slide 9: Select a subset  ####

# Select columns from `flights` dataframe.
library(tidyverse)
select(flights, #<- specify the dataframe
       year,    #<- specify the 1st column
       month,   #<- specify the 2nd column
       day)     #<- specify the 3rd column
# Select columns from `flights` dataframe
select(flights,  #<- specify the dataframe
       year:day) #<- specify the range of columns


#=================================================-
#### Slide 10: Select by excluding  ####

# Select multiple columns from `flights` dataframe by providing which columns to exclude in selection
select(flights,     #<- specify the dataframe
       -(year:day)) #<- specify the range of columns to exclude


#=================================================-
#### Slide 11: Select - helper functions  ####

select(flights, starts_with("arr"))

#=================================================-
#### Slide 13: Mutate  ####

?dplyr::mutate

mutate(df,       # <- dataframe 
       new_col1, # <- rule(s) for the new column
       ...)


#=================================================-
#### Slide 14: Mutate - create the dataset  ####

# Let's select columns of `flights` dataframe and save them as `flights_sml`.
flights_sml = select(flights,            #<- specify data fra,e
                     year:day,           #<- specify range of columns to include
                     ends_with("delay"), #<- find all columns that end with `delay`
                     distance,           #<- select `distance` column
                     air_time)           #<- select `air_time` column
flights_sml


#=================================================-
#### Slide 15: Mutate - arguments  ####

# Add two columns `gain` and `speed` to `flights_sml`. 
mutate(flights_sml,                      #<- specify the dataframe
       gain = arr_delay - dep_delay,     #<- create `gain` column by subtracting departure delay 
                                         #   from arrival delay
       speed = distance / air_time * 60) #<- create `speed` from distance and air time columns


#=================================================-
#### Slide 16: Transmute  ####

transmute(df,       # <- dataframe 
          new_col1, # <- rule(s) for new column
          ...) 


#=================================================-
#### Slide 17: Transmute example  ####

# Add two columns `gain` and `speed` to `flights_sml`. 
transmute(flights_sml,                      #<- specify the dataframe
          gain = arr_delay - dep_delay,     #<- create `gain` column by subtracting departure delay 
                                            #   from arrival delay
          speed = distance / air_time * 60) #<- create `speed` from distance and air time columns


#=================================================-
#### Slide 19: Mutate and transmute - useful functions (cont-d)  ####

# Check for detailed documentation
?dplyr::ranking

rank_function(x) # <- one of rank functions with
                 #    a vector of values to rank  


#=================================================-
#### Slide 21: Exercise 1  ####




#=================================================-
#### Slide 23: Directory settings and loading packages  ####

# Set `main_dir` to the location of your `skillsoft-2021` folder (for Mac/Linux).
main_dir = "~/Desktop/skillsoft-2021"
# Set `main_dir` to the location of your `skillsoft-2021` folder (for Windows).
main_dir = "C:/Users/[username]/Desktop/skillsoft-2021"

# Make `data_dir` from the `main_dir` and remainder of the path to data directory.
data_dir = paste0(main_dir, "/data")
# Make `plots_dir` from the `main_dir` and remainder of the path to plots directory.
plot_dir = paste0(main_dir, "/plots")

# Set directory to data_dir.
setwd(data_dir)
library(tidyverse)
library(nycflights13)


#=================================================-
#### Slide 24: Installing packages and loading data  ####

setwd(data_dir)
load("tidyr_tables.RData")


#=================================================-
#### Slide 25: Summarise and group_by  ####

# Check for detailed documentation
?dplyr::summarise

# Use cases for `summarise` function
summarise(df,                #<- dataframe 
          summary_function1, #<- summary rule(s) 
                             #   for new column
          ...)


#=================================================-
#### Slide 26: Summarise and group_by  ####

# Check for detailed documentation
?dplyr::group_by

# Use cases for `group_by` function
group_by(df,         #<- dataframe 
          variable1, #<- 1st variable to group by
          variable2, #<- 2nd variable to group by
          ...)


#=================================================-
#### Slide 27: Summarise and group_by alone  ####

# Produce a summary 
summarise(flights, delay = mean(dep_delay, na.rm = TRUE)) 

# Create `by_day` by grouping `flights` by year, month, and day.
by_day = group_by(flights, year, month, day)     
by_day


#=================================================-
#### Slide 28: Summarise and group_by together  ####

# Now use grouped `by_day` data and summarise it to see the average delay by year, month and day.
summarise(by_day, delay = mean(dep_delay, na.rm = TRUE))


#=================================================-
#### Slide 30: Dplyr and the pipe: a better way  ####

delays = flights %>%                                   #<- take flights data
  group_by(dest) %>%                                   #<- group it by destination
  summarise(count = n(),                               #<- then summarize by creating count variable
            dist = mean(distance, na.rm = TRUE),       #<- and computing mean distance
            delay = mean(arr_delay, na.rm = TRUE)) %>% #<- and mean arrival delay
  filter(count > 20, dest != "HNL")                    #<- then filter it
delays


#=================================================-
#### Slide 31: Summarise and handling NAs  ####

flights %>% 
  group_by(year, month, day) %>% 
  summarise(mean = mean(dep_delay))
flights %>% 
  group_by(year, month, day) %>% 
  summarise(mean = mean(dep_delay, 
                        na.rm = TRUE))


#=================================================-
#### Slide 33: Summarise n to count  ####

flights %>% 
  group_by(year, month, day) %>% 
  summarise(mean = mean(dep_delay, na.rm = TRUE),  
            n = n()) #<- add a column with summary counts


#=================================================-
#### Slide 34: Summarise not needed to count  ####

flights %>% 
  count(day) #<- count number of instances of entry in `day` column


#=================================================-
#### Slide 35: Summarise rank  ####

flights %>% 
  group_by(year, month) %>% 
  summarise(first = min(dep_time, na.rm = TRUE),
            last = max(dep_time, na.rm = TRUE))


#=================================================-
#### Slide 36: Summarise position  ####

# 1. Build a subset of all flights that were not canceled.
not_cancelled = flights %>%
  filter(!is.na(dep_time))  #<- filter flights where `dep_time` was not `NA`

# 2. Group and summarize all flights that were not canceled to get desired results.
not_cancelled  %>%
  group_by(year, month, day) %>%   #<- group the not canceled flights
  summarise(first = min(dep_time), #<- then summarize them by calculating the first
            last = max(dep_time))  #<- and last flights in the `dep_time` in each group


#=================================================-
#### Slide 37: Summarise distinct values  ####

# Number of flights that take off, by day.
not_cancelled  %>%
  group_by(year, month, day) %>%
  summarise(flights_that_take_off = n_distinct(dep_time)) #<- calculate distinct departure times


#=================================================-
#### Slide 38: Remember to ungroup before you regroup  ####

# Take the same `not_canceled` data, but now group by month instead of by day.
not_cancelled %>%                                  #<- set dataframe
  ungroup() %>%                                    #<- first ungroup it
  group_by(year, month) %>%                        #<- then group by year and month
  summarise(flights_by_year = n_distinct(dep_time))#<- then do the rest ...


#=================================================-
#### Slide 40: Exercise 2  ####




#=================================================-
#### Slide 43: Would analysis be easy with these datasets?  ####

key_value_country
year_country
rate_country


#=================================================-
#### Slide 44: What makes data 'tidy'?  ####

tidy_country


#=================================================-
#### Slide 47: Separating and uniting  ####

rate_country


#=================================================-
#### Slide 48: Separate  ####

?tidyr::separate

separate(df,   #<- dataframe 
         col,  #<- name of column to separate 
         into) #<- name of new variables to 
               #   create as a character vector


#=================================================-
#### Slide 49: Separate  ####

# Using `rate_country` separate its `rate` column into two.
rate_country %>%                   #<- set dataframe and pass it to next function with pipe           
  separate(rate,                   #<- separate `rate`
           into = c("cases",       #<- into column `cases`, and
                    "population")) #<-      column `population`


#=================================================-
#### Slide 50: Separate  ####

# Using `rate_country` separate its `rate` column into two.
rate_country %>% 
  separate(rate, 
           into = c("cases", 
                    "population"), 
           sep = "/")              #<- set the separating character to `/`


#=================================================-
#### Slide 51: Separate: sep set to index  ####

# Using `rate_country` separate its `year` column into two.
rate_country %>%
  separate(year,              #<- separate `year`
           into= c("century", #<- into two columns: `century`, and 
                   "year"),   #<-                   `year`
           sep = 2)           #<- set the separator at index = 2


#=================================================-
#### Slide 52: Separate: data type conversion  ####

# The new columns 
# are now also characters.
rate_country %>%
  separate(rate, into = c("cases", "population"))
rate_country %>%
  separate(rate, into = c("cases", "population"), convert = TRUE)


#=================================================-
#### Slide 53: Unite  ####

?tidyr::unite

unite(df,  #<- dataframe 
      col, #<- name of column to unite 
      sep) #<- separator to use


#=================================================-
#### Slide 54: Unite example  ####

# Let's separate the `rate_country`'s `year` column into `century` and `year` first.
ex_table = rate_country %>% 
  separate(year, into = c("century", "year"), sep = 2)
ex_table
# Now we use `unite` to combine the two new columns back into one.
# By default, unite will combine columns using `_` so we can use `sep` to specify that we 
# do not want anything between the two columns when combined into one cell.
ex_table %>%      #<- specify the dataframe to pipe into `unite`
  unite(time,     #<- set the column `time` for combined values
        century,  #<- 1st column to unite
        year,     #<- 2nd column to unite
        sep = "") #<- set the separator to an empty string 


#=================================================-
#### Slide 62: Loading the CMP dataset for EDA  ####

# Set working directory to where we store data.
setwd(data_dir)

# Read CSV file called "ChemicalManufacturingProcess.csv"
CMP = read.csv("ChemicalManufacturingProcess.csv",
               header = TRUE,
               stringsAsFactors = FALSE)


#=================================================-
#### Slide 63: About the CMP dataset  ####

# View CMP dataset in the tabular data explorer.
View(CMP)


#=================================================-
#### Slide 65: Subsetting data (cont'd)  ####

# Let's make a vector of column indices we would like to save.
column_ids = c(1:4,  #<- concatenate a range of ids
               14:16)#<- with another a range of ids
column_ids

# Let's save the subset into a new variable.
CMP_subset = CMP[ , column_ids]
str(CMP_subset)


#=================================================-
#### Slide 67: Univariate plots: boxplots  ####

summary(CMP_subset$Yield)
boxplot(CMP_subset$Yield,
        col = "orange",
        main = "Yield Summary") #<- add title 


#=================================================-
#### Slide 68: Univariate plots: histogram  ####

# Univariate plot: histogram.
hist(CMP_subset$Yield,
     col = "blue",
     xlab = "Yield",   #<- set x-axis label
     main = "Dist. of Yield") #<- set title


#=================================================-
#### Slide 69: Univariate plots: histogram (cont'd)  ####

# Histogram data without plot.
hist(CMP_subset$Yield, plot = FALSE)



#=================================================-
#### Slide 71: Exercise 3  ####




#######################################################
####  CONGRATULATIONS ON COMPLETING THIS MODULE!   ####
#######################################################
