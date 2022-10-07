# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![d1](https://github.com/siqiou/MechaCar_Statistical_Analysis/blob/f4fb6cda828a868fe08d95238aea60e81c162a93/images/two.png)
1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
The vehicle_weight, spoiler_angle, and AWD provided non-random amount of variance to the mpg values.

2. Is the slope of the linear model considered to be zero? Why or why not?
The slope is not equal to zero, because the P value is 5.35e-11

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
This means almost 72% of the predictions are correct using this linear model.

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

![d2](https://github.com/siqiou/MechaCar_Statistical_Analysis/blob/f4fb6cda828a868fe08d95238aea60e81c162a93/images/total%20summary.png)
![d2-2](https://github.com/siqiou/MechaCar_Statistical_Analysis/blob/f4fb6cda828a868fe08d95238aea60e81c162a93/images/lot%20summary.png)

In total summary the variance is 62 which met the expectations overall, however, if we look at each lot individually, lot 1 variance 0.9 and lot 2 variance 7.4 are within the range, but lot 3 variance is 170. Therefore, lot 3 did not meet expectations.

## T-Tests on Suspension Coils
Interpretation and findings for the t-test results: 

![d3](https://github.com/siqiou/MechaCar_Statistical_Analysis/blob/f4fb6cda828a868fe08d95238aea60e81c162a93/images/three.png)
1. Comparing PSI of 3 lots: lot 1 - 1.0, lot 2 - 0.6, lot 3 0.04. Only lot 3 p value is smaller than 0.05, which is significant. 
2. Comparing mean of 3 lots: lot 3 has the lowest mean 1496, also with the only negative t-value of -2, it indicates low reliability of the predictive power of that coefficient. This shows lot 3 is performing under expectations and the other 2 lots are having better performances.

## Study Design: MechaCar vs Competition
Design a statistical study that can quantify how the MechaCar performs against the competition.

To help MechaCar in improving its competitive advantage, we will measure the highway fuel efficiency aginst its competitors. As gas price continue to surge, it would be best interets of consumers who wants to save money.

-What metric or metrics are you going to test?
City and highway fuel efficiency

-What is the null hypothesis or alternative hypothesis?
Hypothesis: MechaCar's new product line is saving $1 of gas per 100km as compared to competitor's model
Null hypothesis: MechaCar's new product line will not save more money on gas per 100km as compared to competitor's model
Alternative hypothesis: MechaCar's new product line might save some money on gas per 100km as compared to competitor's model

-What statistical test would you use to test the hypothesis? And why?
We will run a 2 sample T test to compare the data from MechaCar and the competitor, comparing measurements on the same subjects across a single span of time. This is to see if there is statistical difference between the 2 datasets, see if the difference is zero.

-What data is needed to run the statistical test?
We will need the feul efficiency data fo the similar car model from MechaCar and the competitor, testing the null hypothesis.
