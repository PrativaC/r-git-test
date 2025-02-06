# Intro to R coding notes

#### Using basic mathematical operators ####
10+3
10-3
10*3
10/2

#### Objects ####
a <- 2
b = 5

a+b

a-b

a*b

b/a

#### Character variables #### 
name <- "Prativa"
six <- "6"

class (six) 
class (a)
# Attempting to add a character to number
six + a # ERROR:non-numeric argument to binary operator

#### Using Functions ####
# Creating vectors
vec <- c(1, 2, 3, 4, 5, 6, 7)
vec2 <- c("Prativa", "Aarya", "Swikriti")
vec3 <- c(TRUE, FALSE, TRUE)

# Performing element-wise addition
vec + a 

# Summary statistics
mean(vec) 
sd(vec) 
sum(vec) 
median(vec) 
min(vec) 
max(vec) 
summary(vec) 
abs(vec) 
sqrt(vec) 
log(vec) 
log10(vec) 
exp(vec)

#### Logical Operators ####
# Comparisons
1 > 2 # FALSE
1 < 2 # TRUE
1 <= 2 # TRUE
1 == 1 # TRUE
1 == 2 | 1 == 1 # TRUE (OR operator)
1 == 2 & 1 == 1 # FALSE (AND operator)
1 == 1 & 1 == 1 # TRUE

#### Logical Subsetting ####
t <- 1:10  # Numeric vector

# Using logical conditions
t[(t > 8) | (t < 5)]  # Returns values less than 5 or greater than 8
t[(t > 8) & (t < 10)]  # Returns 9
t[t != 2]  # Returns all values except 2
t[!t == 2]  # Alternative way to exclude 2
1 %in% t  # TRUE (checks if 1 is in the vector)

#### Matrices ####
# Creating a numeric matrix
mat1 <- matrix(data = c(1, 2, 3), nrow = 3, ncol = 3)
mat1 

# Creating a character matrix
mat2 <- matrix(data = c("Prativa", "Aarya", "Swikriti"), nrow = 3, ncol = 3)
mat2 

#### Data Frames ####
# Creating a data frame
df <- data.frame(mat1[,1], mat2[,1])
df 

# Renaming column names
colnames(df) <- c("value", "name")
df 

#### Indexing ####
# Indexing Vectors
vec2[2]  # Returns "Aarya"

# Indexing Matrices
mat1[1, 3]  # Returns element in row 1, column 3
mat1[1, ]  # Returns the first row

# Indexing Data Frames
df[1, ]  # Returns the first row
df[, "value"]  # Returns first column
df$value  # Returns 'value' column
df$name  # Returns 'name' column
df$name[2]  # Returns second value in 'name' column
df$name[2:3]  # Returns second and third values in 'name' column

# Fancy Subsetting
df$value[df$name == "Aarya"]  # Returns value for "Aarya"
df[df$name == "Aarya", ]  # Returns entire row where name is "Aarya"
subset(df, name == "Aarya")  # Alternative way to subset

# Adding a new column
df$log_value <- log(df$value)
df  
#### Installing Packages ####

install.packages("ggplot2")  # Installs ggplot2 package
#### Reading Data ####

getwd()  # Check working directory

# Reading a CSV file
invitro <- read.csv("C:/Users/chhet/OneDrive - Auburn University/Desktop/invitro/50 invitro.csv")
str(invitro)  # Displays structure of dataset
