#Install Library
library(tidyverse)

#Import and read in the MechaCar_mpg.csv file as a dataframe
mpg_table <- read.csv(file= 'Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(mpg_table)

#Perform linear regression using the lm() function. 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mpg_table)

#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mpg_table))

#import and read in the Suspension_Coil.csv file as a table.
Suspension_Coil_table <- read.csv(file= 'Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
head(Suspension_Coil_table)

#Write an RScript that creates a total_summary dataframe
#Total_Summary
total_summary<- Suspension_Coil_table %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), StDev_PSI=sd(PSI),.groups = 'keep')
total_summary

#Lot_Summary
Lot_summary <- Suspension_Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), StDev_PSI=sd(PSI),.groups = 'keep')
Lot_summary

#T- Tests
t.test(log10(Suspension_Coil_table$PSI),mu=1500)

#Subset t-tests
t.test(log10((subset(Suspension_Coil_table,Manufacturing_Lot=="Lot1"))$PSI),mu=1500)

t.test(log10((subset(Suspension_Coil_table,Manufacturing_Lot=="Lot2"))$PSI),mu=1500)

t.test(log10((subset(Suspension_Coil_table,Manufacturing_Lot=="Lot3"))$PSI),mu=1500)

