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
housing_df

## Fitting the linear regression model using Sale Price and Square Feet Lot as
##explanatory or independent (x) variable 
## Fit a model using Sale Price and Square Feet Lot as X variables
model1 <- lm(Sale.Price ~ sq_ft_lot,  data = housing_df)
model1

## Get summary of this model1 
summary(model1)

##Multiple linear regression model
Regression(Sale.Price ~ sq_ft_lot,  data = housing_df)

##Standardized  regression coefficient 
reg_brief(Sale.Price ~ sq_ft_lot,  data = housing_df, standardized=TRUE)

##Fit a model using several X variables 
model2 <- lm(Sale.Price ~ sq_ft_lot + lon + lat + square_feet_total_living +
               present_use, data = housing_df)
model2

## Get summary of this model2 
summary(model2)

##Multiple linear regression model
Regression(Sale.Price ~ sq_ft_lot + lon + lat + square_feet_total_living +
             present_use, data = housing_df)

##Standardized  regression coefficient 
reg_brief(Sale.Price ~ sq_ft_lot + lon + lat + square_feet_total_living +
             present_use, data = housing_df, standardized=TRUE)



##Calculated correlation between Sale Price and Square Feet Lot
cor(Housing$`Sale Price`, Housing$sq_ft_lot)
cor
##Ask for confidence intervals for the model coefficients 
confint(model2, confi.level=0.95)


## check the regression diagnostic plot fir this model2
plot(model2)


## Use the cbind and rbind function on your dataset
cbind(housing_df$Sale.Price, housing_df$sq_ft_lot)
rbind(housing_df$Sale.Price, housing_df$sq_ft_lot)

##Use the appropriate function to show the sum of large residuals.
sum(residuals(model2))
sum(residuals(model1))^2

##Which specific variables have large residuals 
##(only cases that evaluate as TRUE)
resid(model2))


##outlier and leverage analysis
plot(model1)
plot(model2)

##cookies distance 
cooks.distance(model1)
cooks.distance(model2)

##calculating the leverage model1
lev=hatvalues(model1)
lev
##calculating the leverage model2
lev=hatvalues(model2)
lev

##assumption check
par(mfrow=c(2,2))
plot(model2)

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

