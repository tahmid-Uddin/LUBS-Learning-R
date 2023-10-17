##########################################################
##########################################################
######### Introduction to R for Social Sciences (Part 2)
######### LUBS1185
######### Understanding Statistics in the Social Sciences
######### 2023/24 
##########################################################
##########################################################

# https://jaspertjaden.github.io/course-intro2r/week2.html#data-used-in-the-course

##... Using tables ..............................................................

# The table command allows us to look at tables. Its simplest 
# usage looks like table(x) where x is a categorical variable

gender <- c("male", "female", "female", "male", "female")

class(gender)
table(gender)

class(table(gender))
prop.table(table(gender))

##... Factors ....................................................................

# Categorical data is often used to classify data into various levels or factors
# To make a factor is easy with the command factor or as.factor

x <- c("Yes","No","No","Yes","Yes")
x
factor(x)
class(factor(x))

gender <- as.factor(gender)
gender

gender <- factor(gender, labels =  c("Female", "Male"))
gender

#################
# Data Frame in R
#################

# There are multiple ways to create a data frame. One option is to use 
# data.frame()

emp.data <- data.frame(emp_id = c (1:5), 
                       emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
                       salary = c(623.3,515.2,611.0,729.0,843.25),
                       start_date = c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11","2015-03-27"))

View(emp.data)   # View the data 
print(emp.data)
str(emp.data)    # structure of the data


##... Read the data (retail online sales) ...............................................................

# this gives you current directory 

getwd() 

# change to the directory where you saved the file

setwd("C:/Users/User/Documents/University of Leeds Teaching/2022_23/LUBS1185 Understanding Statistics in the Social Sciences/Week 1 CBL")

# read the data (the data is in csv format)

retail <- read.csv(file = "business.retailsales2.csv", header = TRUE, as.is = TRUE,
                   stringsAsFactors = FALSE, check.names = FALSE)

##... Subsetting data frame .............................................................................

# Data frames in R have two dimensions: rows and columns.
# With a two-dimensional structure, data frames can be subset 
# with the notation [row_index, column_index]  or data_name[row_index, column_index]

View(retail)
str(retail)
retail

nrow(retail)
ncol(retail)
dim(retail)

head(retail)
tail(retail)

head(retail, 10)
tail(retail, 10)

class(retail) # this is a data frame object

retail[1, 1] # this extracts or subsets the first row and first column of the data
retail[1, 6] # first element in the 6th column (as a vector)

# data_name[, column_index] # this will extract all the rows for the column, column_index
# data_name[row_index, ]    # this will extract all the columns for the row, row_index

retail[, 1]    # first column in the data frame (as a vector)
retail[, 6]
retail[, ncol(retail)]

retail[3, ]    # the 3rd row (as a data.frame)
retail[20, ]
retail[nrow(retail), ]

retail[, 1:3]
retail[, c(1, 2, 3)]
retail[, c(2, 5, 9)]

retail[c(1 : 10), ]
retail[c(1, 10, 20), ]

retail[, -1]
retail[, -c(1, 2)]
retail[, -c(1, 4, 5)]

retail[-c(1:15), ]

retail[c(1 : 10), 2]
retail[c(1 : 20), c(1, 2, 3)]

colnames(retail) # view all the variable names in retail data frame

retail[, "Year"]
retail[, c("Year", "Month", "Total Sales")]
retail[c(1 : 20), c("Year", "Month", "Total Sales")]
retail[1 : 20, c("Year", "Month", "Total Sales")]

##... Accessing variables in data frame .............................................................................

# 1. data_name["variable_name"]    # this gives a data frame
# 2. data_name[, "variable_name"]  # this gives a vector
# 3. data_name[["variable_name"]]  # this gives a vector 
# 4. data_name$variable_name       # this gives a vector 

colnames(retail)

retail["Total Sales"]
class(retail["Total Sales"])

retail[, "Total Sales"]
class(retail[, "Total Sales"])

retail[["Total Sales"]]
class(retail[["Total Sales"]])

retail$Shipping

##... Changing column names ...............................................................

colnames(retail)         # this gives another character vector       
class(colnames(retail))  # you can check if it is a character vector

x <- colnames(retail)    # you can assign this vector to variable, x
x
rm(x)                    # this removes the object

colnames(retail)[3]      # colnames(retail) is a vector
                         # therefore you can do vector indexing
                         # vector_name[index]
colnames(retail)[1]
colnames(retail)[2]

colnames(retail)[3]
colnames(retail)[3] <- "orders" # changing it form Total Orders
                                # to orders 
colnames(retail)                # see the change? 

colnames(retail)[4]             # Similar example to above
colnames(retail)[4] <- "gross_sales"
colnames(retail)

colnames(retail)[c(7, 9)]       # changing multiple names now 
colnames(retail)[c(7, 9)] <- c("net_sales", "total_sales")
colnames(retail)

##... Variable Transformation ...............................................................

sqrt(retail$total_sales)  # you can apply different functions
log(retail$total_sales)

table(retail$Year)        # since retail$Year is a vector, you can
                          # also apply table() function
retail$Year
class(retail$Year)        # integer vector is the same as numeric. 
factor(retail$Year)       # use factor function to convert it to 
                          # a factor variable 

retail$Year <- factor(retail$Year) # you may reassign it back to 
                                   # original variable
class(retail$Year)
levels(retail$Year)
table(retail$Year)

retail$Shipping # this is the variable, Shipping
                # in the data. It is a numeric
                # vector/variable

retail$ship_10 <- retail$Shipping + 10
colnames(retail)

retail$log_total_sales <- log(retail$total_sales)

# To remove a variable: 

retail$ship_10 <- NULL
retail 

##... Binding Data frame ...................................................................

emp.newdata <-  data.frame(
  emp_id = c(6:8), 
  emp_name = c("Jennifer","Amanda","Helen"),
  salary = c(578.0,722.5,632.8), 
  start_date = c("2013-05-21","2013-07-30","2014-06-17"),
  stringsAsFactors = FALSE
)
emp.newdata

emp.finaldata <- rbind(emp.data, emp.newdata) # both the data frame need 
                                              # to have 
                                              # same number of columns 
emp.finaldata




