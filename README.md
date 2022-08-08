# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

The slope shouldn't be considered to be zero, because p-value is only 5.35e-11, which is much less than than usual threshold 0.05.

Given tiny p-values of vehicle_length and ground_clearance, these variables have a significant impact on MPG. Intercept is small, so it seems all significant variables have been included in the model.

R-squared is more than 0.7, which means our model approximates the data well.

The fact there are only two significant variables may mean that our model overfits the data. **So we should split tha data in two datasets and try to forecast second dataset with coefficients received with the first dataset**

### Summary

The model approximates data well but it probably overfits tha data

## Summary Statistics on Suspension Coils

The variance of the suspension coils for all lots in total seems large but it meets the design specification: it does not exceed 100 pounds per square inch.
![](./analysis/total_summary.png)

When we have looked into individual lots it turned out, that Lot1 is ideal, Lot2 is good, and Lot3 is bad and should be recalled.
![](./analysis/lot_summary.png)

## T-Tests on Suspension Coils

PSI across all lots may be called statistically different from the population mean 1500 as p-value is less than 0.05.
![](./analysis/t_t_total.png)

PSI for lot1 *is not* statistically different from the population mean 1500 as p-value is maximum.
![](./analysis/t_t_lot1.png)

PSI for lot2 is not statistically different from the population mean 1500  as p-value is large.
![](./analysis/t_t_lot2.png)

PSI for lot3 is definitely statistically different from the population mean 1500  as p-value is less than 0.05.
![](./analysis/t_t_lot3.png)

## Study Design: MechaCar vs Competition

I am most interested in quality tests quality test. I would approached the task in two ways, through hardware and trough :humanware".

### Hardware. Lot quality distribution

**Metric** I would test if distributions of p-values for t-tests comparing manufacturing lots (much more than three lots) against mean PSI of the population are statistically significantly different.

**H0 & H1**
- H0: There is no statistically significant difference between lots' quality distributions for MechaCar and its competitor.
- H1: There is a statistically significant difference between lots' quality distributions for MechaCar and its competitor.

**Statistical test** I would use chi-square test.

**Data** Suspension coil data for MechaCar's competitors.

### "Humanware 1". How long has a car been used by the first owner before it is traded-in?
### "Humanware 2". How many miles in on a car when it is traded-in by its first owner?

I will test competitors model by model (SUVs with SUVs, minivans with minivans, etc.)

Not every machine is traded in the way I no it, so the figure is not the population, but a sample.

**Metric** years/miles

**H0 & H1**
- H0: There is no statistically significant difference between a traded-in model's years/miles means for MechaCar and its competitor.
- H1: There is a statistically significant difference between a traded-in model's years/miles means for MechaCar and its competitor.

**Statistical test** Two-sample t-test.

**Data** Trade-in data by model for MechaCar and its competitors
