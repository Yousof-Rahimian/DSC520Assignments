# Assignment: ASSIGNMENT House Data
# Name: Rahimian, yousof
# Date: 2021-10-22

library(lessR)
library(ggplot2)
library(plyr)
library(dplyr)
library(purrr)
library(stringr)

## Set the working directory to the root of your DSC 520 directory as an  
setwd("C:/Users/Yousof/Desktop/DSC 520/week8-9")

## Load the `data/r4ds/heights.csv` to
housing_df <- read.csv("C:/Users/Yousof/Desktop/DSC 520/week8-9/Housing.csv")
read.table("Housing.csv", header = TRUE, sep = ",")


## Fitting the linear regression model using Sale Price and Square Feet Lot as
##explanatory or independent (x) variable 
## Fit a model using Sale Price and Square Feet Lot as X variables
## create a model1 using Sale Price and Square Feet Lot variables 
model1 <- lm(Sale.Price ~ sq_ft_lot,  data = housing_df)
model1

## Get summary of this model1 
summary(model1)

##create a model2 using several X variables 
model2 <- lm(Sale.Price ~ sq_ft_lot + lon + lat, data = housing_df)
model2

## Get summary of this model2 
summary(model2)

##Multiple regression model for model1 
Regression(Sale.Price ~ sq_ft_lot,  data = housing_df)

##Standardized  regression coefficient for model1
reg_brief(Sale.Price ~ sq_ft_lot,  data = housing_df, standardized=TRUE)

##Multiple regression for model2
Regression(Sale.Price ~ sq_ft_lot + lon + lat, data = housing_df)

##Standardized  regression coefficient for model2
reg_brief(Sale.Price ~ sq_ft_lot +lon +lat,
          data = housing_df, standardized=TRUE)

##Calculated correlation between Sale Price and Square Feet Lot
##Ask for confidence intervals for the model1 coefficients 
confint(model1, confi.level=0.95)

##Ask for confidence intervals for the model2 coefficients 
confint(model2, confi.level=0.95)

##Perform casewise diagnostics to identify outliers for model2
##hit enter to see all plots 
summary(model2)
plot(model2)
##rows 4648,4649, and 8377 are outliers. They have high leverage and influences.
##running this analysis again with out above 3 outliers and see the changes
##using comand 'slice' to remove outliers
## get rid of the above 3 outliers with 'slice' command 
##slice of 4648,4649,8377 rows 
no_4648_4649_8377<- housing_df%>% slice(-c(4648,4649,8377))

##making new version of model3
model3 <- lm(Sale.Price ~ sq_ft_lot + lon + lat, data = no_4648_4649_8377)
plot(model3)

## Get summary of this model3 
summary(model3)

##compare summary to see differences of model2 and model3 P values
summary(model2)
summary(model3)


##Use the appropriate function to show the sum of large residuals.
sum(residuals(model2))
sum(residuals(model1))^2

##Which specific variables have large residuals 
##(only cases that evaluate as TRUE)
resid(model2)

##cookies distance 
cooks.distance(model1)
cooks.distance(model2)
cooks.distance(model3)

##calculating the leverage model1
lev=hatvalues(model1)
lev

##calculating the leverage model2
lev=hatvalues(model2)
lev

##calculating the leverage model3
lev=hatvalues(model3)
lev

##assumption check model2 
par(mfrow=c(2,2))
plot(model2)

##assumption check model3
par(mfrow=c(2,2))
plot(model3)

##independent assumption check for model1 
library("gvlma")
require(gvlma)
gvmodel1 <- gvlma(model1)
summary(gvmodel1)

##independent assumption check for model2 
library("gvlma")
require(gvlma)
gvmodel2 <- gvlma(model2)
summary(gvmodel2)

##independent assumption check for model3
library("gvlma")
require(gvlma)
gvmodel3 <- gvlma(model3)
summary(gvmodel3)

