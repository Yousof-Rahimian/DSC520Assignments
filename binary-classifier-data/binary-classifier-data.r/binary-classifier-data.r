# Assignment: ASSIGNMENT 10
# Name: Rahimian, Yousof
# Date: 2021-11-5

library(foreign)
library(coefplot)

## Set the working directory to the root of your DSC 520 directory
setwd("C:/Users/Yousof/Desktop/DSC 520/week 10")

##load the 'binary-classifier-data.csv' to 
binary_classifier_data <- read.csv("C:/Users/Yousof/Desktop/DSC 520/week 10/binary-classifier-data.csv")
binary_classifier_data

##Fit a logistic regression model to the binary-classifier-data.csv data set
binary_classifier_data_glm <- glm(label ~ ., 
                                  data=binary_classifier_data, family = binomial(link = "logit"))
binary_classifier_data_glm

coefplot(binary_classifier_data_glm)
summary(binary_classifier_data_glm)


plot(binary_classifier_data_glm)







