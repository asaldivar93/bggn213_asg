#' ---
#' title: "Lab 4"
#' author: "Alexis Saldivar Garcia"
#' date: "October 12, 2025"
#' ---
source("http://thegrantlab.org/misc/cdc.R")
library(dplyr)
library(ggplot2)
tail(cdc, 10)
## Plots
ggplot(cdc, aes(height, weight)) + geom_point()
cor(cdc$height, cdc$weight)
weight_kg <- cdc$weight * 0.454
height_m <- cdc$height * 0.0254
bmi <- weight_kg / (height_m^2)
plot(height_m, bmi)
cor(height_m, bmi)
sum(bmi>=30)
new_df <- cdc[1:100,]
plot(new_df$height, new_df$weight)
sum(cdc[bmi>=30, 9]=="m")
