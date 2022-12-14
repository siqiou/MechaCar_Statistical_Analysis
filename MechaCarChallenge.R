# Deliverable 1 Linear Regression to Predict MPG

# Use the library() function to load the dplyr package.
library(dplyr)
library(tidyverse)

# Import and read in the MechaCar_mpg.csv file as a dataframe.
MCar_Data <- read.csv('MechaCar_mpg.csv')
head(MCar_Data)

# Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =Car_Data)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =MCar_Data)) 

# Deliverable 2 Create Visualizations for the Trip Analysis

# Import and read in the Suspension_Coil.csv file as a table
SCoil_Data <- read.csv('Suspension_Coil.csv')
head(SCoil_Data)

# Create a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
Mean = mean(SCoil_Data$PSI)
Median=median(SCoil_Data$PSI)
Variance=var(SCoil_Data$PSI)
SD = sd(SCoil_Data$PSI)

total_Summary <- data.frame(Mean,Median,Variance,SD)

# Create a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- SCoil_Data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median = median(PSI),Variance = var(PSI),SD = sd(PSI), .groups = 'keep') 


#Deliverable 3 T-Tests on Suspension Coils

# Write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test((SCoil_Data$PSI),mu = 1500)

# write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
t.test(subset(SCoil_Data,Manufacturing_Lot =="Lot1")$PSI,mu = 1500)
t.test(subset(SCoil_Data,Manufacturing_Lot =="Lot2")$PSI,mu = 1500)
t.test(subset(SCoil_Data,Manufacturing_Lot =="Lot3")$PSI,mu = 1500)
