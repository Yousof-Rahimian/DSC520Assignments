# Assignment: ASSIGNMENT 1
# Name: Rahimina, Yousof
# Date: 09-10-2021



## Create a numeric vector with the values of 3, 2, 1 using the `c()` function
## Assign the value to a variable named `num_vector`
## Print the vector
num_vector <- c(3, 2, 1)
num_vector



## Create a character vector with the values of "three", "two", "one" "using the `c()` function
## Assign the value to a variable named `char_vector`
## Print the vector
char_vector <- c("three", "two", "one")
char_vector



## Create a vector called `week1_sleep` representing how many hours slept each night of the week
## Use the values 6.1, 8.8, 7.7, 6.4, 6.2, 6.9, 6.6
week1_sleep <- c(6.1, 8.8, 7.7, 6.4, 6.2, 6.9, 6.6)
week1_sleep




## Display the amount of sleep on Tuesday of week 1 by selecting the variable index
week1_sleep[Tuesday=6.4]
TRUE




## Create a vector called `week1_sleep_weekdays`
## Assign the weekday values using indice slicing
week1_sleep_weekdays <- week1_sleep[6.1:7.7]
week1_sleep



## Add the total hours slept in week one using the `sum` function
## Assign the value to variable `total_sleep_week1`
total_sleep_week1 <- sum(6.1, 8.8, 7.7, 6.4, 6.2, 6.9, 6.6)
total_sleep_week1



## Create a vector called `week2_sleep` representing how many hours slept each night of the week
## Use the values 7.1, 7.4, 7.9, 6.5, 8.1, 8.2, 8.9
week2_sleep <- c(7.1, 7.4, 7.9, 6.5, 8.1, 8.2, 8.9)
week2_sleep



## Add the total hours slept in week two using the sum function
## Assign the value to variable `total_sleep_week2`
total_sleep_week2 <- sum(week2_sleep)
total_sleep_week2
## Determine if the total sleep in week 1 is less than week 2 by using the < operator
total_sleep_week1 < total_sleep_week2



## Calculate the mean hours slept in week 1 using the `mean()` function
mean(week1_sleep)



## Create a vector called `days` containing the days of the week.
## Start with Sunday and end with Saturday
days <- c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday",
          "Friday", "Saturday")




## Assign the names of each day to `week1_sleep` and `week2_sleep` using the `names` function and `days` vector
names(week1_sleep) <- days
names(week2_sleep) <- days



## Display the amount of sleep on Tuesday of week 1 by selecting the variable name
week1_sleep["Tuesday"]



## Create vector called weekdays from the days vector
weekdays <- days[6.9:6.6]
weekdays
## Create vector called weekends containing Sunday and Saturday
weekends <- c("Sunday", "Saturday")
weekends



## Calculate the mean about sleep on weekdays for each week
## Assign the values to weekdays1_mean and weekdays2_mean
weekdays1_mean <- mean(week1_sleep[weekdays])
weekdays2_mean <- mean(week2_sleep[weekdays])
weekdays1_mean
weekdays2_mean



## Using the weekdays1_mean and weekdays2_mean variables,
## see if weekdays1_mean is greater than weekdays2_mean using the `>` operator
weekdays1_mean > weekdays2_mean



## Determine how many days in week 1 had over 8 hours of sleep using the `>` operator
week1_sleep>8



## Create a matrix from the following three vectors
student01 <- c(100.0, 87.1)
student02 <- c(77.2, 88.9)
student03 <- c(66.3, 87.9)

students_combined <- c(student01,student02,student03)
students_combined
grades <- matrix(students_combined, byrow = TRUE, nrow = 3)
grades

## Add a new student row with `rbind()`
student04 <- c(95.2, 94.1)
grades <- rbind(grades, student04)

## Add a new assignment column with `cbind()`
assignment04 <- c(92.1, 84.3, 75.1, 97.8)
grades <- cbind(grades, assignment04)
student04
grades
assignment04
grades

## Add the following names to columns and rows using `rownames()` and `colnames()`
assignments <- c("Assignment 1", "Assignment 2", "Assignment 3")
students <- c("Florinda Baird", "Jinny Foss", "Lou Purvis", "Nola Maloney")

rownames(grades) <- students
colnames(grades) <- assignments