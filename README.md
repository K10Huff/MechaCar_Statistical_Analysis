# MechaCar Statistical Analysis
Statistical Analysis of Automotive Production Datasets Using R


# **Overview of the Analysis**
## **Summary**
The purpose of this analysis was to discover statistically significant relationships between the data collected for the purpose of improving automotive production and design. Techniques utilized included multiple linear regression models, measurements of variability and two-sided t-tests. 
# **Results**
## Linear Regression to Predict MPG
1.  The vehicle weight, spoiler angel and and AWD all provided a non-random amount of variance to the mpg values in the dataset. According to our results y-intercept, vehicle length and ground clearance are statistically unlikely to provide random amounts of variance to the linear model. Therefore, the vehicle length and ground clearance have a significant impact on mpg.
2. The Null Hypothesis of the multiple regression models posits that the slope of the linear regression model is zero. The p-value of our multiple linear regression analysis is 5.35e-11, which is far less than the assumed significance level of 0.05. Therefore, there is sufficient evidence to reject the null hypothesis and the slope is considered to be non-zero. 
3. Since the r-squared is used to determine the likelihood that future data points will fit the linear model and the r-value is 0.6825 this model does effectively predict the mpg of MechaCar prototypes. 

![ Linear Regression to Predict MPG](github link)

## Summary Statistics on Suspension Coils 
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Data that is distributed normally assumes that 99.97% of the data for PSI is expected to fall within the range of [mean - 3(standard deviation): mean + 3(standard deviation)].
For the total lot summary with a mean of 1498.8 PSI and a standard deviation of 7.9, the range of PSI should be fall between 1476.3 - 1523.7 which is acceptable according to the manufacturing standards. 
Following the same procedure with the individual lots we can populate a summary table where it is evident all the individual lots pass the manufacturing standards.
| Summary Lot | Mean | Standard Deviation | Range | Acceptable |
| :----: | :----: | :----: |:----: | :----: |
| Total Lots | 1498.8 | 7.9 | 1476.3 - 1523.7 | Yes |
| Lot One | 1500 | 1.0 | 1497 - 1503 | Yes |
| Lot Two | 1500 | 2.7 | 1508.1 - 1491.9 | Yes |
| Lot Three | 1496 | 13 | 1,457 - 1535 | Yes | 

![ Total and Lot Summary Table ](github link)

## T-Tests on Suspension Coils
summary of the t-test results across all manufacturing lots and for each lot. 
For both the overall and the subset by lots, the p-value is sufficiently small enough to have sufficient evidence to reject the null hypothesis and state that the two means are statistically different.

![ T-Tests Summary](git hub link)

## Study Design: MechaCar vs Competition
The purpose of this analysis would be to discover if there was a statistically significant difference between the overall cost of a car produced by MechaCar and that of its competitors. The data collected would include initial purchase price, maintenance cost, maintenance frequency, fuel efficiency for the city and highway and cost to insure. The null hypothesis would be that there is no difference between the performance of a MechaCar and that of its competitors. The alternate hypothesis would be that there is a different in performance MechaCar and that of its competitors.
Techniques utilized would include two-sample t-Tests and multiple linear regression analysis. 

