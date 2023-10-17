##########################################################
##########################################################
######### Introduction to Descriptive Statistics for 
######### Social Sciences
######### R Example 
######### LUBS1185
######### Understanding Statistics in the Social Sciences
######### 2023/24 
##########################################################
##########################################################


###############
# Read the Data 
###############

# get the working directory 

getwd()

# change the working directory 

setwd("D:/Documents/University of Leeds Teaching/2022_23/LUBS1185 Understanding Statistics in the Social Sciences/Week 1 CBL")

# look at the list of files

list.files()

# read the data

df <- read.csv(file = "business.retailsales2.csv", header = TRUE, as.is = TRUE, stringsAsFactors = FALSE,
               check.names = FALSE)

########################
# Descriptive Statistics
########################

str(df)
head(df)
tail(df)
ls.str(df)

df$`Net Sales`

# mean 

mean(df$`Net Sales`)
round(mean(df$`Net Sales`), 0)

# median 

median(df$`Net Sales`)

# histogram of net sales

hist(df$`Net Sales`)

# 25th percentile

quantile(df$`Net Sales`, probs = 0.25)

help("quantile")

# 75th percentile

quantile(df$`Net Sales`, probs = 0.75)

# 90th percentile

quantile(df$`Net Sales`, probs = 0.90)

# IQR

IQR(df$`Net Sales`)

# Standard deviation 

sd(df$`Net Sales`)

# Variance

var(df$`Net Sales`)
(sd(df$`Net Sales`))^2

# range

range(df$`Net Sales`)

# summary 

summary(df$`Net Sales`)

########################
# Descriptive Statistics
# Missing Values 
########################

df[c(8, 21), "Net Sales"] <- NA

# mean 

mean(df$`Net Sales`, na.rm = TRUE)
round(mean(df$`Net Sales`, na.rm = TRUE), 0)

# median 

median(df$`Net Sales`, na.rm = TRUE)

# histogram of net sales

hist(df$`Net Sales`)

# 25th percentile

quantile(df$`Net Sales`, probs = 0.25, na.rm = TRUE)

help("quantile")

# 75th percentile

quantile(df$`Net Sales`, probs = 0.75, na.rm = TRUE)

# 90th percentile

quantile(df$`Net Sales`, probs = 0.90, na.rm = TRUE)

# IQR

IQR(df$`Net Sales`, na.rm = TRUE)

# Standard deviation 

sd(df$`Net Sales`, na.rm = TRUE)

# Variance

var(df$`Net Sales`, na.rm = TRUE)
(sd(df$`Net Sales`, na.rm = TRUE))^2

# range

range(df$`Net Sales`, na.rm = TRUE)

# summary 

summary(df$`Net Sales`)
