
# R is a case sensitive language
# when working with data we can use the tidyverse package for better and optimized functionalities
z<-5
print (z)
print('Hello World')
print(2*2)


# creating vectors
c(2.5, 48.5, 101.5)

#To create a vector of integers with the c() function, you must place the letter L directly after each number.
c(1L, 5L, 15L)

c(TRUE, FALSE, TRUE)

# providing vector a range from 4 to 10(included)
z <- c(4:10)
z

# typeof method
typeof(c("a" , "b"))
typeof(5)
typeof(5.0)
typeof(c(1L , 3L))
# without L written after the number its datatype is changed to double
typeof(c(1 , 3))


# is.integer is a built-in method used to check if the given vector values are integer or not
x <- c(2L, 5L, 11L)
is.integer(x)

x <- c(2L, 5, 11L)
is.integer(x) #return false due to L removed beside 5

#R returns a value of FALSE because the vector contains logical values, not characters.
y <- c(TRUE, TRUE, FALSE)
is.character(y)

y <- c('TRUE', TRUE, FALSE)
is.character(y) # now will return True

# vector length 
x <- c(33.5, 57.75, 120.05)
length(x)

# the following code assigns the variable, x, to a new vector with three elements. Then, it uses the names() function to assign a different name to each element of the vector. Finally, it displays the variable, x. Run the following code: 
x <- c(1, 3, 5)
names(x) <- c("a", "b", "c")
x

# Extract a subset of a vector --indexing strts from 1
x <- c(1, 3, 5)
names(x) <- c("a", "b", "c")
x
x[2]

x <- c(1, 3, 5)
names(x) <- c("a", "b", "c")
x
x[5] # will be out of bound(still unlike python doesn't throw any error) so output will be NA

x <- c(1, 3, 5)
names(x) <- c("a", "b", "c")
x[0] #x[0] returns an empty numeric vector with no values.
x[1]  # returns a 
x[-1] # returns b and c --Means: “give me everything except the 1st element.”

x <- c(1, 3, 5)
names(x) <- c("a", "b", "c")
x
x["b"]

x[1]  # by position
x["a"]  # by name


# creating Lists
#Similar to the c() function, the list() function is a list of the values inside the function’s parentheses: list(x, y, z).
list("a", 1L, 1.5, TRUE)

#list within list
list(list(list(1 , 3, 5)))

# determine list's structure
# To find out what types of elements a list contains, use the str() function
#str() = structure function in R.
# "a" → a character
# 1L → an integer (the L forces integer in R)
# 1.5 → a numeric (double)
# TRUE → a logical

str(list("a", 1L, 1.5, TRUE))

z <- list(list(list(1 , 3, 5)))
str(z)

# Name list elements
# this is dictionary in Python
# List elements, like vector elements, can be named when you create them with the list() function:
list('Chicago' = 1, 'New York' = 2, 'Los Angeles' = 3)

x <- list('Chicago' = 1, 'New York' = 2, 'Los Angeles' = 3)

x$Chicago        # 1
x[["New York"]]  # 2
x["Los Angeles"] # still a list containing 3

# dates and time in R
# for date and time in R we need to install packages first 

install.packages("tidyverse")
library(tidyverse)
library(lubridate)

ymd("2023-01-20")

mdy("January 20th, 2023")
# code output:
# [1] "2023-01-20"

dmy("20-Jan-2021")
# code output:
# [1] "2021-01-20"


# Create a date-time from a string
#The ymd() function and its variations create dates. To create a date-time from a string, add an underscore and one or more of the letters h, m, and s (hours, minutes, seconds) to the name of the function:

ymd_hms("2021-01-20 20:11:59")
# code output:
# [1] "2021-01-20 20:11:59 UTC"
mdy_hm("01/20/2021 08:01")
# code output:
# [1] "2021-01-20 08:01:00 UTC"

#Create a date from a date-time
#he function as_date() to convert a date-time to a date. For example, put the current date-time—now()—in the parentheses of the function. 

as_date(now())
# code output:
# [1] "2025-09-16" --present data

 now()
#[1] "2025-09-16 01:06:04 PKT" --output of now() 
 
#If you need to manually create a data frame in R, you can use the data.frame() function. The data.frame() function takes vectors as input
data.frame(x = c(1, 2, 3) , y = c(1.5, 5.5, 7.5))

# The extract operator [] in a data frame
# dataframe[row, column]

z <- data.frame(x = c(1, 2, 3),
                y = c(4, 5, 6))

z[2, 1]
# [1] 2
z[2, 2]
# [1] 5

#Create a file

#Use the file.create() function to create a blank file. Place the name and the type of the file in the parentheses of the function.
# Your file types will usually be something like .txt, .docx, or .csv.

file.create("new_text_file.txt") 
file.create("new_word_file.docx") 
file.create("new_csv_file.csv")

#If the file is successfully created when you run the function, R will return a value of TRUE. Otherwise, R will return a value of FALSE. 


# Copy a file
# Copy a file with the file.copy() function. In the parentheses, add the name of the file to be copied. Then, enter a comma, and add the name of the destination folder that you want to copy the file to. 

file.copy("new_text_file.txt", "destination_folder") # True--if done else False

# You can delete R files with the unlink() function. Enter the file’s name in the parentheses of the function.
#unlink("test.csv")
# [1] 0   # means success, file deleted (or file didn’t exist)

unlink("some_.file.csv")


# To create a matrix, use matrix()
# matrix() needs:
#   1. A vector (the values for the matrix)
#   2. At least one dimension:
#        - nrow = number of rows
#        - ncol = number of columns
#
# Example:
m <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2)
print(m)

# R infers the number of rows automatically.(columns as well when the other one is already given)
matrix(c(3:8), nrow = 2)

matrix(c(3:8), ncol = 2)

# our first calculations (run the code)
quarter_1_sales <- 35657.98 
quarter_2_sales <- 43810.55 

midyear_sales <- quarter_1_sales + quarter_2_sales 
print(midyear_sales)
yearlySales =midyear_sales*2
yearlySales


# logical operators
airquality[, "Solar.R"] > 150 & airquality[, "Wind"] > 10 # and operator --&
airquality[, "Solar.R"] > 150 | airquality[, "Wind"] > 10 # or operator --|
airquality[, "Day"] != 1 # not operator --!
!(airquality[, "Solar.R"] > 150 | airquality[, "Wind"] > 10) # not with or operator

# conditional statements
x<-5
if (x > 0) {
  print("x is a positive number")
}else {
  print('negative number')
}

x <- -2
if (x > 0) {
  print("x is a positive number")
} else {
  print("negative number")
}


x <- 7
if (x > 0) {
  print ("x is a positive number")
} else {
  print ("x is either a negative number or zero")
}

# In R, the $ operator is used to access a column in a data frame (or list element by name).
#while the[1] shows the first value of that column to be checked
if (airquality$Temp[1] < 80) {
  print("It's not a hot day!")
} else {
  print("It's a hot day.")
}


df <- data.frame(
  name = c("Ali", "Sara", "John"),
  age = c(23, 25, 30)
)

df$name   # gets the "name" column
df$age    # gets the "age" column

# if, else if, else statements
x <- -1
if (x < 0) {
  print("x is a negative number")
} else if (x == 0) {
  print("x is zero")
} else {
  print("x is a positive number")
}


ozone_level <- airquality[1,"Ozone"]
if(is.na(ozone_level)){
  print("Ozone reading is missing for the first day.")
} else if(ozone_level < 30){ 
  print("Low ozone level.")
} else if(ozone_level < 100){ 
  print("Moderate ozone level.")
} else{
  print("High ozone level.")
}

# to install packages in R we use install.packages()
install.packages("tidyverse")
# to load tidyverse package --tidyverse itself is a meta-package i.e. collection of packages
library("tidyverse")

#it actually loads several core packages together, including:
#  
# ggplot2 (for visualization)
# 
# dplyr (for data manipulation)
# 
# tidyr (for reshaping data)
# 
# readr (for reading data)
# 
# purrr (for functional programming)
# 
# tibble (for modern data frames)
# 
# stringr (for string manipulation)
# 
# forcats (for working with factors)


# doesn't support multi line comments for that case press ctrl+shift+c to select the line you want to comment

# to check for updates
tidyverse_update()

# four essential packages for a data analyst workflow
# ggplot2 --help creating data plots
# dplyr -- for data manipulation tasks
# tidyr
# readr --used for importing data


# pipes in R
# used to expressing a sequence of multiple operations represented by "% > %"
# it takes output of one statement and makes input of the other statement

data("ToothGrowth") # loading the data from ToothGrowth
View (ToothGrowth) # we'll be able to view the ToothGrowth data set
install.packages("dplyr")
library(dplyr)
filtered_tg<-filter(ToothGrowth,dose == 0.5)
filtered_tg
arrange(filtered_tg,len)

# nested function
arrange(filter(ToothGrowth,dose == 0.5),len)

# shortcut for inserting pipe operator ctrl+shift+m
filtered_toothGrowth<-ToothGrowth %>% 
  filter(dose==0.5) %>% 
  arrange(len)
filtered_toothGrowth


filtered_toothGrowth <- ToothGrowth %>%
  arrange(supp) %>%
  group_by(supp) %>%
  summarize(mean_len = mean(len, na.rm = T), .groups = "drop") # T here is for TRUE we can write any of them
filtered_toothGrowth
  
  

# R data frames
#data frames-- collection of columns
# in tidyverse-- tibbles are like streamlined data frames
#never change the data type of the input
# never change the names of your variables
#never create row names
#make printing easier

# working with data frames
install.packages("tidyverse")
library(ggplot2)
data("diamonds")
View(diamonds) # View is with capital 'V' as R is a case sensitive language
head(diamonds) # shows only 1st 6 rows of the data set # a tibble 6*10

# to get the structure of the data frame we can use the methods like str() --structure and colnames()
str(diamonds)
colnames(diamonds)

# we can also use mutate() to make changes to our data frame -- is the part of dplyr package of tidyverse
library(tidyverse)
#mutate(data_frame, new_column_name = expression)
mutate(diamonds, carat_2 = carat * 100)


## Create a data frame solutions
## Step 1: Load packages
# Start by installing the required package; in this case, you will want to install `tidyverse`. If you have already installed and loaded `tidyverse` in this session, feel free to skip the code chunks in this step.

install.packages("tidyverse")
library(tidyverse)

## Step 2: Create data frame
# Sometimes you will need to generate a data frame directly in `R`. There are a number of ways to do this; one of the most common is to create individual vectors of data and then combine them into a data frame using the `data.frame()` function.
# First, create a vector of names:
names <- c("Peter", "Jennifer", "Julie", "Alex")

# Then create a vector of ages:
age <- c(15, 19, 21, 25)

# With these two vectors, you can create a new data frame called `people`:
people <- data.frame(names, age)

## Step 3: inspect the data frame
# Now that you have this data frame, you can use some different functions to inspect it.
# One common function you can use to preview the data is the `head()` function, which returns the columns and the first several rows of data. You can check out how the `head()` function works by running the chunk below:
head(people)

# In addition to `head()`, there are a number of other useful functions to summarize or preview your data. For example, the `str()` and `glimpse()` functions will both provide summaries of each column in your data arranged horizontally. You can check out these two functions in action by running the code chunks below:
str(people)
glimpse(people)

# You can also use `colnames()` to get a list the column names in your data set. Run the code chunk below to check out this function:
colnames(people)

# Now that you have a data frame, you can work with it using all of the tools in `R`. For example, you could use `mutate()` if you wanted to create a new variable that would capture each person's age in twenty years. The code chunk below creates that new variable:
mutate(people, age_in_20 = age + 20)

## Step 4: Try it yourself

# To get more familiar with creating and using data frames, use the code chunks below to create your own custom data frame. 
# First, create a vector of any five different fruits. You can type directly into the code chunk below; just place your cursor in the box and click to type. Once you have input the fruits you want in your data frame, run the code chunk.
fruit <- c("Lemon", "Blueberry", "Grapefruit", "Mango", "Strawberry")

# Now, create a new vector with a number representing your own personal rank for each fruit. Give a 1 to the fruit you like the most, and a 5 to the fruit you like the least. Remember, the scores need to be in the same order as the fruit above. So if your favorite fruit is last in the list above, the score `1` needs to be in the last position in the list below. Once you have input your rankings, run the code chunk.
rank <- c(4, 2, 5, 3, 1)

# Finally, combine the two vectors into a data frame. You can call it `fruit_ranks`. Edit the code chunk below and run it to create your data frame.
fruit_ranks <- data.frame(fruit, rank)

# After you run this code chunk, it will create a data frame with your fruits and rankings.

# tibbles
diamonds_tibble <- as_tibble(diamonds)
diamonds_tibble


# data method--You can use the data() function to load these datasets in R. If you run the data() function without an argument, R will display a list of the available datasets. 
data()

data(mtcars)
#When you run the function, R will load the dataset. 
mtcars

View(mtcars)

# 
# The goal of readr is to provide a fast and friendly way to read rectangular data. readr supports several read_ functions. Each function refers to a specific file format.
# 
# read_csv(): comma-separated values (.csv) files
# 
# read_tsv(): tab-separated values files
# 
# read_delim(): general delimited files
# 
# read_fwf(): fixed-width files
# 
# read_table(): tabular files where columns are separated by white-space
# 
# read_log(): web log files


# Here are some examples of file types that store rectangular data:
#   
#   .csv (comma separated values): a .csv file is a plain text file that contains a list of data. They mostly use commas to separate (or delimit) data, but sometimes they use other characters, like semicolons. 
# 
# .tsv (tab separated values): a .tsv file stores a data table in which the columns of data are separated by tabs. For example, a database table or spreadsheet data. 
# 
# .fwf (fixed width files): a .fwf file has a specific format that allows for the saving of textual data in an organized fashion. 
# 
# .log: a .log file is a computer-generated file that records events from operating systems and other software programs.
# 
# Base R also has functions for reading files, but the equivalent functions in readr are typically much faster. They also produce tibbles, which are easy to use and read. 


# title: "Lesson 2: Import Solutions"
# output: html_document

# Importing and working with data activity solutions
# This document  contains the solutions for the importing and working with data activity. You can use these solutions to check your work and ensure that your code is correct or troubleshoot your code if it is returning errors. If you haven't completed the activity yet, we suggest you go back and finish it before reading the solutions. 
# 
# If you experience errors, remember that you can search the internet and the RStudio community for help:
# https://community.rstudio.com/#

## Step 1: Load packages

# Start by installing your required package. If you have already installed and loaded `tidyverse` in this session, feel free to skip the code chunks in this step.
install.packages("tidyverse")
library(tidyverse)

## Step 2: Import data

# The data in this example is originally from the article Hotel Booking Demand Datasets (https://www.sciencedirect.com/science/article/pii/S2352340918315191), written by Nuno Antonio, Ana Almeida, and Luis Nunes for Data in Brief, Volume 22, February 2019.
# 
# The data was downloaded and cleaned by Thomas Mock and Antoine Bichat for #TidyTuesday during the week of February 11th, 2020 (https://github.com/rfordatascience/tidytuesday/blob/master/data/2020/2020-02-11/readme.md).
# 
# You can learn more about the dataset here:
#   https://www.kaggle.com/jessemostipak/hotel-booking-demand
# 
# In the chunk below, you will use the `read_csv()` function to import data from a .csv in the project folder called "hotel_bookings.csv" and save it as a data frame called `bookings_df`:
#   

bookings_df <- read_csv("hotel_bookings.csv")

# Now that you have the `bookings_df`, you can work with it using all of the  `R` functions you have learned so far. 
# 
# ## Step 3: Inspect & clean data
# 
# One common function you can use to preview the data is the `head()` function, which returns the columns and first several rows of data. Check out the `head()` function by running the chunk below:
head(bookings_df)

# Check out the `str()` function by running the code chunk below:
  
str(bookings_df)

# To find out what columns you have in your data frame, try running the the `colnames()` function in the code chunk below:
  
colnames(bookings_df)

# If you want to create another data frame using `bookings_df` that focuses on the average daily rate, which is referred to as `adr` in the data frame, and  `adults`, you can use the following code chunk to do that:
  
new_df <- select(bookings_df, `adr`, adults)


# To create new variables in your data frame, you can use the `mutate()` function. This will make changes to the data frame, but not to the original data set you imported. That source data will remain unchanged. 

mutate(new_df, total = `adr` / adults)

## Step 4: Import your own data

# Now you can find your own .csv to import! Using the RStudio Cloud interface, import and save the file in the same folder as this R Markdown document. Then write code in the chunk below to read that data into `R`:

own_df <- read_csv("<filename.csv>")

# ends here

# these packages simplify data cleaning tasks
install.packages("here")
library("here")

install.packages("skimr")
library("skimr")
install.packages("dplyr")
library("dplyr")

# read_csv("file_name") --if you want to read a file

install.packages("palmerpenguins")
# cleaning functions for the data set
skim_without_charts("penguins")  # from skimr package

glimpse(penguins)
head(penguins)

penguins %>% 
  select (species) # everything in the species column



penguins %>% 
  select (-species) # everything in the except species column

# rename() makes it easy to rename column name
penguins %>% 
  rename(island_new = island)


# rename_with() changes column names to be more consistent

rename_with(penguins,toupper) # toupper converts it to upper case
rename_with(penguins,tolower) #tolower converts it to lower case

#clean_names()
clean_names(penguins)

## organize your data
library(palmerpenguins) # loading the dataset is a very critical task not doing so will cause runtime errors
data("penguins")

library(tidyverse)
penguins %>% arrange(bill_length_mm) # arranged in ascending order
penguins %>% arrange(-bill_length_mm) # arranged in descending order

# to save any of such changes on the dataset not just viewing it in the console
# we need to declare a new variable 
 penguins_2 <- penguins %>% arrange(bill_length_mm)
 penguins_2

 
 penguins %>% group_by(island) %>% drop_na() %>% summarize(mean_bill_length_mm = mean(bill_length_mm))
 
penguins %>% group_by(island) %>% drop_na() %>% summarize(max_bill_length_mm = max(bill_length_mm))

penguins %>% group_by(species,island) %>% drop_na() %>% summarize(max_bl = max(bill_length_mm),mean_bl = mean(bill_length_mm))


penguins %>% filter(species =="Adelie")


# manually creating a dataframe
id <- c(1:10)

name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, name, job_title)
employee

# transforming data
id<-c(1:10)
names<-c('a z','b','c','d','e','f','g','h','i','j')
id
names
employee<-data.frame(id,names)
employee
print(employee)
library(tidyr)
separate(employee, names, into = c('first_name', 'last_name'), sep = ' ')


first_name <- c("John", "Rob", "Rachel", "Christy", "Johnson", "Candace", "Carlson", "Pansy", "Darius", "Claudia")

last_name <- c("Mendes", "Stewart", "Abrahamson", "Hickman", "Harper", "Miller", "Landy", "Jordan", "Berry", "Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, first_name, last_name, job_title)

print(employee)

library(tidyr)
unite(employee, names, first_name,last_name, sep = ' ')

library(dplyr)
View(penguins)
penguins %>% 
  mutate(body_mass_kg = body_mass/1000,
         flipper_length_m= flipper_len/100)

# Wide data has observations across several columns. Each column contains data from a different condition of the variable. In this example the columns are different years. 

# the pivot_longer() and pivot_wider() functions in R is essential for organizing your data effectively. These functions help you convert data between two formats: wide and long. 
# 
# library(tidyr)
# long_data <- pivot_longer(wide_data, cols = starts_with("Sales"), names_to = "Year", values_to = "Sales")
# 
# wide_data <- pivot_wider(long_data, names_from = Year, values_from = Sales)
# 
# 

# In R, the sample() function allows you to take a random sample of elements from a data set.

# The sample(), SMOTE, and NearMiss algorithms are just a handful of the many functions and methods in R that you can use to address bias in your data. 

# Anscombe’s quartet: Four datasets that have nearly identical summary statistics but contain different plotted values
# 
# Arithmetic operator: An operator used to perform basic math operations such as addition, subtraction, multiplication, and division
# 
# FWF (fixed-width file): A text file with a specific format, which enables the saving of textual data in an organized fashion
# 
# head() (R): An R function that returns a preview of the column names and the first few rows of a dataset
# 
# Log file: A computer-generated file that records events from operating systems and other software programs
# 
# mutate() (R): An R function that makes changes to a dataframe separating and merging columns or creating new variables 
# 
# Relational operator: An operator used to compare values, also known as a comparator
# 
# Tibble (R): A streamlined variation of data frames 
# 
# Tidy data (R): A way of standardizing the organization of data within R
# 
# TSV (Tab-separated values file): A text file that stores a data table by separating columns of data with tabs





#data visualizations ->ggplot2, plotly, lattice, RGL, Dygraph, leaflet, highcharter  
# ggplot2 is the R's most popular visualization package-> ggplot is for grammar of graphics
# creating different types of plots
# customize the look and feel of plots
# creating high quality visuals
# combine data customization and manipulation
# geom-> geometric object used to represent data

ggplot(data=penguins)+
  geom_point(mapping = aes(x=flipper_len,y=body_mass))


ggplot(data=penguins, aes(x=flipper_len,y=body_mass))+
  geom_point(aes (color=species))+
  facet_wrap(~species)


ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut))


# facets-> lets you display smaller groups or subsets of you data
# labels and annotations-> let you customize your plot

ggplot(data=penguins, aes(x=flipper_len,y=body_mass))+
  geom_point(aes (color=species))+
  facet_wrap(~species)
  labs(title = "Palmer Penguins: Body Mass Vs FlipperLength")

  
# An annotation is a text label that helps explain the data in a plot.
#  Alpha is an aesthetic that makes some points on a plot more transparent, or see-through, than others
# an aesthetic is a visual property of an object in your plot.
  
  
# install.package("tidyverse") ->  if not already downloaded
library("ggplot2") #  or library(ggplot2) has same working
library("palmerpenguins")

  ggplot(data=penguins) + 
    geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g))

# + is used to add layers to the plot(graph) 
# geom_point() tells R to use points to represent our data -> geom_point is a geometric point to represent data
# aesthetic is the visual property of a plot ->  mapping = aes()

# create a template for plotting a graph
  
#  ggplot(data=<DATA>)+
#   <geom_function>(mapping=aes(<aesthetic_mapping>))
  
  
  # if you want to learn about any of the function or the keyword write ?<functionName() or the keyword>
  
?geom_point()
?ggplot 
?tidyverse #->leads to documentation --in this case there is no available documentation for tidyverse
?barplot
  
  
# enhancing visuals
#  library("ggplot2") #  or library(ggplot2) has same working
#  library("palmerpenguins") --> in case not used before
  # basic scatter plot
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y = body_mass_g))

  # scatter plot with colors representing various species
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y = body_mass_g,color = species))

 # scatter plot with color and shapes representing different species 
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y = body_mass_g,color = species,shape = species))

 # similarly we can only use different shapes to represent different species
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y = body_mass_g,shape = species))


 #  using different shapes for different islands   
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y = body_mass_g,color = species,shape = island))


# here we have also added the size variable along with shape and color
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y = body_mass_g,color = species,shape = island, size = sex))


ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y = body_mass_g,color = species,shape = island, size = body_mass_g))


# alpha aesthetics
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y = body_mass_g,alpha = species))


# setting all the points to the desired color

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y = body_mass_g,color= 'purple'))

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y = body_mass_g,color= "purple"))

# here the working of the plot has the bug in both of the code scripts as color is assigned within the aes()
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y = body_mass_g),color= 'purple')

# In ggplot2, the shape, color, and size of data points in a plot refers to the concept of aesthetics. 
# Geom refers to the geometric object used to represent your data. 
# Facets let you display smaller groups, or subsets, of your data.
# Annotations are text labels that help explain the data in your plot.
# In ggplot2, the shape, color, and size of data points in a plot refers to the concept of aesthetics.


# https://ggplot2.tidyverse.org/ --> available cheatsheet for ggplot

# https://www.rdocumentation.org/packages/ggplot2/versions/3.3.3/topics/aes --> R documentation aes()

ggplot(data=penguins)+
  geom_point(mapping =aes(x=flipper_length_mm,y=body_mass_g))


# different geom functions include--> geom_point(), geom_line(), geom_bar(),geom_smooth()

#geom_point()
ggplot(data=penguins)+
  geom_point(mapping =aes(x=flipper_length_mm,y=body_mass_g),color="purple")

# geom_bar should pass only one argument more than one will show error
# geom_bar with y axis
ggplot(data=penguins)+
  geom_bar(mapping =aes(y=flipper_length_mm),color="purple")
# geom_bar with x axis
ggplot(data=penguins)+
  geom_bar(mapping =aes(x=flipper_length_mm),color="purple")

# geom_line
ggplot(data=penguins)+
  geom_line(mapping =aes(x=flipper_length_mm,y=body_mass_g),color="purple")

# geom_smooth
ggplot(data=penguins)+
  geom_smooth(mapping =aes(x=flipper_length_mm,y=body_mass_g),color="purple")
# geom_smooth -->using aesthetics of linetype
ggplot(data=penguins)+
  geom_smooth(mapping =aes(x=flipper_length_mm,y=body_mass_g,linetype =species ))

# geom_jitter() --> helps us deal with over plotting also make it easier to find the points
ggplot(data=penguins)+
  geom_jitter(mapping =aes(x=flipper_length_mm,y=body_mass_g ))


# we can also implement 2 plots at the same time
# geom_smooth
ggplot(data=penguins)+
  geom_smooth(mapping =aes(x=flipper_length_mm,y=body_mass_g))+
  geom_point(mapping =aes(x=flipper_length_mm,y=body_mass_g),color="purple")

# various keywords for geom_bar()
ggplot(data=diamonds)+
  geom_bar(mapping =aes(x = cut,fill=cut))

ggplot(data=diamonds)+
  geom_bar(mapping =aes(x = cut,fill=clarity))

# Smoothing enables the detection of a data trend even when you can't easily notice a trend from the plotted data points. ggplot2’s smoothing functionality is helpful because it adds a smoothing line as another layer to a plot; the smoothing line helps the data to make sense to a casual observer.                   -->example code:
# ggplot(data, aes(x=distance,                                                    y= dep_delay)) +                                                                geom_point() +                                                                  geom_smooth()

# Types of Smoothing: 
# Loess smoothing: The loess smoothing process is best for smoothing plots with less than 1000 points.
# ggplot(data, aes(x=, y=))+ 
#   geom_point() +       
#   geom_smooth(method="loess")

# Gam smoothing: Gam smoothing, or generalized additive model 
# smoothing, is useful for smoothing plots with a large number of points.
# ggplot(data, aes(x=, y=)) + 
#   geom_point() +        
#   geom_smooth(method="gam", 
#               formula = y ~s(x))
# 


# aesthetics and Facets
# facets-> let you display smaller groups or subsets of your data
# facet_wrap() and facet_grid()

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_wrap(~species)


ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_grid(~species)

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_grid(sex~species)


# ~(tidle operator)Tilde operator is used to define the relationship between dependent variable and independent variables in a statistical model formula. The variable on the left-hand side of tilde operator is the dependent variable and the variable(s) on the right-hand side of tilde operator is/are called the independent variable(s). So, tilde operator helps to define that dependent variable depends on the independent variable(s) that are on the right-hand side of tilde operator. 

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=color,fill=cut))+
  facet_wrap(~cut)

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=color,fill=cut))+
  facet_grid(~cut)


# To compare data trends across average ratings, use a facets function: facet_wrap (~Average Rating)
# To label the axes, use an aesthetics function: aes (x = Average price (USD), y = Product)
# To create a trend line, use a geom function: geom_smooth ().
# To create the scatter plot, use a geom function: geom_point ().
# To highlight underperforming products, use an aesthetics function: col = ifelse (x<2, 'blue', 'yellow').
# To create the bars on the chart, use a geom function: geom_bar ().
# To add a title to the chart, use a label function: title = Average product rating.

# annotation layer
# annotate is used to add notes to a document or diagram to explain or comment upon it

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))+
  labs(title='Palmer Penguins: body mass VS flipper length')



ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title='Palmer Penguins: body mass VS flipper length')


ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title='Palmer Penguins: body mass VS flipper length',subtitle='Sample of three penguin species')


ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title='Palmer Penguins: body mass VS flipper length',subtitle='Sample of three penguin species',caption ='Data Collected by Dr. ABC')


ggplot(data=penguins) +
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species)) +
  labs(title='Palmer Penguins: body mass VS flipper length',
       subtitle='Sample of three penguin species',
       caption='Data Collected by Dr. ABC') +
  annotate("text", x=220, y=3500, label='The Gentoos are the largest')



ggplot(data=penguins) +
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species)) +
  labs(title='Palmer Penguins: body mass VS flipper length',
       subtitle='Sample of three penguin species',
       caption='Data Collected by Dr. ABC') +
  annotate("text", x=215, y=3500, label='The Gentoos are the largest',color='navy blue',fontface='bold',size =4.5,angle=45)



p<- ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title='Palmer Penguins: body mass VS flipper length',subtitle='Sample of three penguin species',caption ='Data Collected by Dr. ABC')
p+annotate('text',x= 220,y=3500,label='The GEntoos are the largest')


# saving your visualizations
# export option or ggsave()

# library(ggplot2)
# library(palmerpenguins)
# the above 2 lines of the code are commented as already loaded the data within the file

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))

# when te graph is been plotted on the plot tab there is an option of export from there we can export our plot in to our systems

# now by using ggsave()
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))
ggsave('Three penguins species.png')

# A graphics device allows a plot to appear on your computer. Examples include:
# 
# A window on your computer (screen device)
# 
# A PDF, PNG, or JPEG file (file device)
# 
# An SVG, or scalable vector graphics file (file device)
# 

#When you make a plot in R, it has to be “sent” to a specific graphics device. To save images without using ggsave(), you can open an R graphics device like png() or pdf(); these will allow you to save your plot as a .png or .pdf file. You can also choose to print the plot and then close the device using dev.off().


# Example of using png()
png(file = "exampleplot.png", bg = "transparent")
plot(1:10)
rect(1, 5, 3, 7, col = "white")
dev.off()


# Example of using pdf()
pdf(file = "/Users/username/Desktop/example.pdf",    
    width = 4,     
    height = 4) 
plot(x = 1:10,     
     y = 1:10)
abline(v = 0)
text(x = 0, y = 1, labels = "Random text")
dev.off()


ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = color, fill = cut)) +
  facet_wrap(~color)




















