library(foreign)
library(coefplot)
library(survival)
library(ggplot2)
## Set the working directory to the root of 'DSC 520/week 10'
setwd("C:/Users/Yousof/Desktop/DSC 520/week 10")

##load the data "ThoraricSurgery.arff"
Thoraric_Surgery_Data <- read.arff("ThoraricSurgery.arff")
Thoraric_Surgery_Data
##fit a Thoraric_Surgery_Data_glm linear model for several variables
Thoraric_Surgery_Data_glm <- glm(Risk1Yr ~ AGE+PRE4+PRE5+PRE6+PRE7+PRE8+PRE9+PRE10+PRE11+PRE14,
                   data =Thoraric_Surgery_Data, family = binomial(link = "logit"))

Thoraric_Surgery_Data_glm 
library(coefplot)
coefplot(Thoraric_Surgery_Data_glm)
summary(Thoraric_Surgery_Data_glm)

###########################################
##fit a Thoraric_Surgery1_Data_glm linear model for all variables 
Thoraric_Surgery1_Data_glm <- glm(Risk1Yr ~ ., 
                data =Thoraric_Surgery_Data, family = binomial(link = "logit"))

Thoraric_Surgery1_Data_glm 
library(coefplot)
coefplot(Thoraric_Surgery1_Data_glm )
summary(Thoraric_Surgery1_Data_glm )
###########################################
##According to the summary, which variables had
##what is the greatest effect on the survival rate?
## the greatest effect of Thoraric_Surgery1_Data_glm  is 'PRE17T = 9.266'
##(Thoraric_Surgery1_Data_glm )
##PRE14OC14    1.653e+00  6.094e-01   2.713  0.00668 **

###########################################

##predict Thoraric_Surgery1_Data_glm  using model 
glm.predict.Risk1Yr <- predict(Thoraric_Surgery1_Data_glm , Thoraric_Surgery_Data, type = 'response')
head(glm.predict.Risk1Yr)
glm.predict.Risk1Yr

##0.56996561 this the accuracy of this model Thoraric_Surgery1_Data_glm  

##plot model
##plot(Thoraric_Surgery1_Data_glm 

head(Thoraric_Surgery1_Data_glm )

cox1 <- coxph(Surv(as.numeric(Risk1Yr) ~ . , data = Thoraric_Surgery_Data))

