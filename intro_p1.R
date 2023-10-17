##########################################################
##########################################################
######### Introduction to R for Social Sciences (Part 1)
######### LUBS1185
######### Understanding Statistics in the Social Sciences
######### 2023/24 
##########################################################
##########################################################


#########################
# Using R as a Calculator 
#########################

# The R console is a full calculator
# Try to play around with it with some mathematical operations. 
# +, -, /, * are add, subtract, divide and multiply
# ^ or ** is power
# parentheses - ( and ) - work with order of operations

##... Examples 

2 + 2
2 * 4 
2 ^ 3
2 + (2 * 3) ^ 2
(1 + 3) / 2 + 45

############
# R Comments
############

# is the comment symbol 

2 * 3 # this 2 times 3 
1 + 2 # this is 1 plus 2. 

#################################
# Creating Variables/Objects in R 
#################################

# You can create variables from within the R environment 
# and from files on your computer
# R is an object oriented programming language
# This means that any thing you create, for example, a variable or vector, 
# is an object in R.  
# We will use variables and objects interchangeably. 
# For example age of an individual is a variable. Income is another 
# variable. 

# R uses "=" or "<-" to assign values to a variable name. 
# "<-" is known as the assignment operator. 
# Variable names are case-sensitive, i.e. X and x are different

x <- 2 # I have created a variable, x which has the value 2
x
x = 2  # same as x <- 2. However, it is better to use <-. 
x      # this will print or produce the value of x 

age <- 34        # this is the age variable
age

height <- 1.75   # this is the height variable
height

name <- "John" # this is the name variable
name

# You can use any names. You can also use underscores, _. 
# However, variable names in R must being with a letter; 
# it cannot be a number. There are variable naming conventions in 
# R that you must be careful of. 
# For more information go here: 
# https://www.r-bloggers.com/2014/07/consistent-naming-conventions-in-r/

weight_kg <- 72 

# All variables are now stored in computer's memory and R has access to 
# it. This is allows us to do variable manipulation or we can do arithmetic with it. 
# or instance, we may want to convert this weight into pounds (weight in pounds is 2.2 times the weight in kg):

weight_kg
weight_kg * 2.2

# We can also change a variable's value by assigning it a new one:

weight_kg <- 100
weight_kg

weight_kg * 2.2

# This means that assigning a value to one variable does 
# not change the values of other variables. 
# For example, let's store the weight in pounds in a new 
# variable, weight_lb. 

weight_lb <- 2.2 * weight_kg

weight_lb
weight_kg

########################################
# Functions and their arguments (Basics)
########################################

# One of the key features of R is its functions. 

# Many of the functions that we will encounter are built-in functions, 
# or that can be accessed by different packages (more on this later)

# Functions are used to accomplish a particular task in R. 
# For example, R has a function mean(x) which takes a variable x 
# and calculates its mean. 

# Functions are "self contained" modules of code that 
# accomplish a specific task. 

# Functions usually take in some sort of data structure 
# (value, vector, data frame etc.), process it, and return a result.

# The general usage for a function is the name of the 
# function followed by parentheses:
# function_name(input)

# The input(s) are called arguments, which can include:
# 1. the physical object (any data structure) on which the function carries out a task
# 2. specifications that alter the way the function operates (e.g. options)

# However, not all functions take arguments and 
# we will see some examples of this. 

##... Examples 

a <- 4
sqrt(a)

a <- 64 # define a variable a and let's say it takes the value 64
sqrt(a) # this is square root function. 
        # It takes one argument/input and it returns the output: value 8

# More examples 

sqrt(81)       # there is no need to define a variable beforehand
sqrt(49)

round(3.14159) # This is another function in R.  

# To see the list of all the arguments of a function

args(round)

round(x = 3.14159, digits = 2) # Round it to 2 digits
round(x = 3.14159)
round(3.14159, digits = 3) # Round it to 3 digits 

# Sometimes, there is no need to specify the name of the argument. 
# This is because some functions identify arguments by their positions. 
# For example, in the round() function digits is always the second argument

round(3.14159, 2)
round(3.14159, 3) # Round it to 3 digits

# Another useful function in R is the print function - print()

print(round(3.14159, 2)) # such expressions are known as compound expressions. 
print(sqrt(a))           # That is you are combining two or more functions into one. 

# More example of print: 

print("Hello World")

print("I love Programming")

#################################
# Basic Object (data) types in R 
#################################

# What are known as objects in R are known as variables in many other programming languages. 
# However, in this module, the two words will be used interchangeably. 
# For more information on R objects, go to: https://cran.r-project.org/doc/manuals/r-release/R-lang.html#Objects

##... Vectors ..............................................................

# A vector is the most common object/basic data type in R, 
# and is pretty much the workhorse of R. 

# A vector is composed by a series or collection of values (or elements), which 
# can be either numbers or characters. 

# We can assign a series of values to a vector using the c() function. 

# The c() is know as the concatenate function or combine function. 
# That is it concatenates or combines all the values as a vector

c(1, 2)
c(1, 10)
c(1, 9, 3)
c("John", "Paul", "Sarah", "Elizabeth")

print(c(1, 2))
print(c(1, 10))
print(c(1, 9, 3))
print(c("John", "Paul", "Sarah", "Elizabeth"))

# For example we can create a vector of weights and assign it to a 
# new object or variable, weight_g

weight_g <- c(21, 34, 39, 54, 55)
weight_g # remember this is the same as print(weight_g)
print(weight_g)

# There are many functions that allow you to inspect the content of a vector. 
# length() tells you how many elements are in a particular vector:

x <- c(1, 2, 3)
x

y <- c(1, 4, 5, 7, 10, 100, -1)
y

length(x)
length(y)

# An important feature of a vector, is that all of the elements 
# are the same type of data. 
# The function class() indicates the class (the type of element) 
# of an object:

height <- c(1.75, 1.83, 1.67, 1.55, 1.78) # this is another vector assigned to the variable, height
class(height)                             # all the values are floating point numbers now. The vector
                                          # belongs to the numeric class. 

weight_g
class(weight_g)

# The function str() provides an overview of the structure of an object and its elements. 

str(weight_g)

# You can use the c() function to add other elements to your vector:

weight_g
c(weight_g, 90)

weight_g <- c(weight_g, 90) # add to the end of the vector
weight_g

c(30, weight_g)

weight_g <- c(30, weight_g) # add to the beginning of the vector
weight_g

c(weight_g, c(40, 52))

weight_h <- c(weight_g, c(40, 52))
weight_h

weight_h <- c(c(60, 43), weight_g)
weight_h

##... Vector Arithmetic and Functions ..............................................................

x <- c(10.4, 5.6, 3.1, 6.4, 21.7)
class(x)
length(x)

x
x + 1 # 1 is added to all the elements of the vector

x * 2

x
1/x   # I take the reciprocal of all the elements. 

y <- c(1, 2, 3, 4, 5)

w <- y + 1 * 2
w

a <- c(16, 25, 49, 64, 81, 100)
length(a)

a
sqrt(a)

a
log(a)

# You can view a full list of mathematical functions from here: 
# https://www.sr.bham.ac.uk/~ajrs/R/r-function_list.html

##... Creating Vectors ..............................................................

# Note: sometimes you don't need c() to create vectors: 

x <- c(0, 1, 2, 3, 4, 5, 6)
x

# You can use the colon operator, :, to create vectors

x <- c(0 : 6)
x

x <- c(0 : 100)
x
length(x)

x <- 0:6
x

x <- 0 : 100
x

##... Character Vectors ..............................................................

names <- c("Sarah", "Peter", "Tom", "John", "Harry", "Raj") # this is character vector
names                                                        # this vector includes names of people

cities <- c("London", "Paris", "New York")  # this vector contains names 
cities                                      # of cities 

length(names)
length(cities)

class(names)
class(cities)

##... Logical Vectors ..............................................................

w <- c(TRUE, FALSE, TRUE, TRUE, TRUE) # logical vectors only contains 
w                                     # true or false values 

class(w)

# Numeric, character, and logical are 3 of the 
# main atomic/basic vector types (or data types) that R uses: "character", "numeric" and "logical". 

############################
# Relational Operators in R  
############################

# In R, these are are the basic relational operators: ==, !=, <, >, <=, >=
# In R, ! is the negation operator

2 == 2 # 2 is equal to 2? Of course! 
2 > 3  # Is 2 greater than 3? Of course not! 
2 < 3  # Is 2 less than 3 ? 
2 <= 3 # 2 is less than or equal to 3?

# ! negation operator 
# ! in R means negation or opposite. 

3 < 2    # 3 is less than 2
!(3 < 2) # 3 is not less than 2

2 == 3 # 2 is equal to 3
2 != 3 # 2 is not equal to 3
!(2 == 3)

# You can use relational operators where you compare 
# a value against a vector

my_values <- c(10, -1, 0.5, 3, 2, 99)
my_values

2 < my_values 
2 > my_values
2 == my_values

my_logic <- 2 < my_values
my_logic

my_odd <- c(1, 5, 3, 7)
my_even <- c(2, 4, 6, 8)

my_odd > my_even # pairwise comparison 
my_odd < my_even # pairwise comparison 


##... Using the %*% or "in" operator ..............................................................

names_2 <- c("John", "Mary")
names_5 <- c("Peter", "David", "John", "Karen", "Mary")

names_2 %in% names_5 # are names in names_2 present in names_5? 
names_5 %in% names_2 

x <- c(1, 7)
y <- c(1 : 10)

x
y

y %in% x

!(names_5 %in% names_2)

##########
# Coercion   
##########

weight_g
class(weight_g) # this is a numeric vector. Can we convert to character? 

as.character(weight_g)

weight_g <- as.character(weight_g)
weight_g
class(weight_g)

# Similar coercion functions: as.numeric()

my_logic
class(my_logic)
as.numeric(my_logic)

my_nums <- as.numeric(my_logic) # What happens if I coerce a logical vector to numeric? 
my_nums                         # In R, TRUE is coded as 1, FALSE is coded as 0 

c(1, 2, 3, "a")
c(34, 0.5, "John")

num_char <- c(1, 2, 3, "a")     # Is it a numeric or character vector?
class(num_char)

####################
# Subsetting vectors
####################

# Subsetting is one of the most important topics in learning R effectively. 
# The basic idea or syntax is: some_vector[index], where some_vector 
# is the name of the vector, and index can be single value or another vector. 

animals <- c("horse", "cat", "dog", "frog")
animals
class(animals)
length(animals)

animals
animals[1]

# Suppose I want the name of the second animal

animals[2]

animals[1] # What is the name of the first animal?
animals[3] # what is the name of the third animal?
animals[4] # What is the name of the last animal?

# Suppose I want to get the names of the 1st and 3rd animals? 

animals[c(1, 3)]
animals[c(1, 4)] # names of the first and fourth animal
animals[c(2, 3)] # What does this give?

animals[c(1:3)]  # this gives the names of the first three animals
animals[c(1:2)]  # this gives the names of the first two animals
animals[c(1:4)]  # this is the same as animals

animals == animals[c(1 : 4)]

# The idea is the name with numeric vectors also: 

weight_h <- c(21, 34, 39, 54, 55)
weight_h
weight_h[1]
weight_h[2]
length(weight_h)
weight_h[length(weight_h)]
weight_h[5]
weight_h[c(1 : 4)]
weight_h[c(1, 3, 5)]
weight_h[c(2, 3)]

# We can use negative indices as well: 

animals
animals[-2] # this yields all animals except the second animal
animals[-1] # all animals except the first one
animals[-c(1, 3)] # all animals except first and third ones

animals[c(1, 2, 3, 2, 1, 4)]

more_animals <- animals[c(1, 2, 3, 2, 1, 4)]
more_animals

########################
# Conditional subsetting
########################

# The concept is similar to previous examples except in the basic 
# syntax, some_vector[index], index is either logical value or vector 
# of values

animals
has_tail <- c(TRUE, TRUE, TRUE, FALSE)

# I want the names of the animals that has a tail? 
# I can use conditional subsetting. 

animals[has_tail] # This command/code will only subset those value(s) in 
                  # the vector animals where the corresponding index or position is TRUE. 
animals
animals[c(TRUE, FALSE, TRUE, FALSE)]

# Suppose I want to get the either the animals "cat" or "frog". 
# In this case, I can use the "or" operator, |

animals == "cat"
animals == "frog"

animals
animals == "cat" | animals == "frog"

animals[animals == "cat" | animals == "frog"]

# If I just wanted frog: 

animals
animals == "frog"

animals[animals == "frog"]

# This is another example using the in operator, %in%. 

animals
animals %in% c("cat", "cow", "dog", "duck", "goat") # are the animals in LHS vector included in the RHS one? 

animals[animals %in% c("cat", "cow", "dog", "duck", "goat")]

my_odd <- c(1, 3, 5, 7, 9, 11)
x <- c(2, 3, 6, 8, 9, 13)

my_odd %in% x 

# %in% "in operator" 

2 %in% c(1, 3)
2 %in% c(1, 2, 3)
!(2 %in% c(1, 3)) 

##... Example using a numeric vector ..............................................................


height <- c(1.55, 1.75, 1.83, 1.67, 1.52, 1.66, 1.69, 1.78, 1.80, 1.91, 1.86, 1.70, 1.54,
            1.72, 1.74, 1.85, 1.55, 1.75, 1.80, 1.77)
height
length(height)

height[20]
height[length(height)]

height[c(1, 2, 10)]

height > 1.75
height[height > 1.75]

height <= 1.75
height[height <= 1.75]

# Suppose I want to get values where height is less than 1.75 
# or greater than 1.80

height < 1.75 | height > 1.80 # | "or" operator 
height[height < 1.75 | height > 1.80]

# Suppose now I want to get values where height is greater than 1.75 
# but less than 1.80. For this, I can now use the "and" operator, &. 

height > 1.75 & height < 1.80 # & "and" operator 
height[height > 1.75 & height < 1.80]

!(height > 1.75 & height < 1.80)
!(height < 1.75 | height > 1.80)

height[!(height > 1.75 & height < 1.80)] # In R, ! is the negation operator
height[!(height < 1.75 | height > 1.80)]

#####################
# Missing Values in R 
#####################

# Missing values are denoted by NA or NaN
# is.na() is used to test if they are NA
# is.nan() is used to test for NaN

# Create a vector with NAs in it

x <- c(1, 2, NA, 10, 3)
class(x)
length(x)

x[1]
x[2]
x[3]

# Return a logical vector indicating which elements are NA

is.na(x)

# Return a logical vector indicating which elements are NaN

is.nan(x) 

height <- c(1.55, 1.75, 1.83, 1.67, 1.52, 1.66, 1.69, NA, 1.78, 1.80, 1.91, 1.86, 1.70, 1.54,
            1.72, 1.74, 1.85, 1.55, 1.75, 1.80, 1.77, NA)
height

is.na(height)
!is.na(height)

height[is.na(height)]
height[!(is.na(height))]

height <- height[!is.na(height)]
height

################################
# Install and load packages in R
################################

# To install a package in R, we use install.packages(package_name). 
# We will see more applications of this. 
# To load a the installed package, we can use library(package_name)

# As an example, install and load the ggplot2 package, which we will be using for visualization 
# using R 

install.packages("ggplot2") # It is better to use install.packages("ggplot", dependencies = TRUE)
library("ggplot2")          # This loads the package, which enables us to use all its functions
                            # and data. 

#########################
# Working directory in R
#########################

# If you want to view your current working directory, use getwd()

getwd()
setwd("C:/Users/User/Documents")

# If you want change your working directory, use setwd()
setwd("C:/Users/User/Documents/University of Leeds Teaching/2022_23/LUBS1185 Understanding Statistics in the Social Sciences/Week 1 CBL")

getwd()


#########################
# Saving and Loading in R
#########################

# To save the current workspace, use save.image()

save.image("week_1.RData")

# To remove all created objects/worskpaces, use rm(list = ls())

rm(list = ls())

# To load a saved workspace, use load(). 
# For example, load("week_1.RData")

# To quit R, use q()

################################
# Reading and Writing Files in R
################################

# R provides several related functions to read data stored as files.

# Use read.csv() to read in data stored as CSV and read.delim() to 
# read in text data delimited by other characters (such as tabs or spaces).
# For read.delim(), specify the delimiter in the sep= argument.
# Both read.csv() and read.delim() assume the first row of the text file is a row of variable names. 
# If this is not true, use the argument header=FALSE.

# Example

dat.tab <- read.delim("sample_week1.txt", header = TRUE,  sep="\t") # try help("read.delim")
dat.csv <- read.csv("sample_week1.csv", header = TRUE, sep = ",")   # try help("read.csv")

##... Exporting data ..............................................................

# We can export our data to a .csv file with write.csv()
# We can also export data to text file using write.table()

# Example

df <- as.data.frame(list(names = c("Company A", "Company B"), 
                         sales = c(1000, 500))) # I have created an imaginary data
df                                              # this is how the data looks like

# Save it in csv or text format

write.csv(x = df, file = "sample_data.csv", row.names = FALSE)
write.table(x = df, file = "sample_data.txt", sep = " ", row.names = FALSE, quote = FALSE)

##... Excel and other software packages ..............................................................

# Packages to read and write data in other software formats:
# readxl : Excel files
# haven: Stata, SAS, and SPSS

# The readr package contains updated versions of read.csv() and read.delim() 
# (called read_csv() and read_delim()) that use modernized data structures

####################
# Look for help in R 
####################

# help() is the main function. For example, type help("print")
# Another option to use is help.search(), help.start()

help("sample")
args(sample)

help(sample)
