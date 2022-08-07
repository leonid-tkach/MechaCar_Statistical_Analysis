library(dplyr)

# Deliverable 1

demo_table3 <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))

# Deliverable 2

Suspension_Coil <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

total_summary <- Suspension_Coil %>% 
  summarize(Mean = mean(PSI),
            Median = median(PSI),
            Variance = var(PSI),
            SD = sd(PSI))
total_summary

lot_summary <- Suspension_Coil %>% 
  group_by(Manufacturing_Lot) %>% 
  summarize(Mean = mean(PSI),
            Median = median(PSI),
            Variance = var(PSI),
            SD = sd(PSI))
lot_summary

