#### Preamble ####
# Purpose: The purpose of this script is to simulate and visualize the trend in testosterone and obesity rates in the United States from the year 1995 
# to 2024. The script generates tables and graphs to illustrate the overall trend in US birth rates, as well as the obesity rates among 
# various subgroups such as different age groups and race and ethnicities.
# Author: Chay Park
# Date: 19 March 2024
# Contact: chay.park@mail.utoronto.ca
# License: MIT
# Pre-requisites: install package, tidyverse


#### Workspace setup ####
library(tidyverse)

# Load necessary libraries
library(ggplot2)
library(dplyr)

#### Simulate data ####
# Set seed for reproducibility
set.seed(42)

# Define the years
years <- 1995:2024

# Generate synthetic data for testosterone levels (hypothetical values)
testosterone_levels <- rnorm(length(years), mean = 550, sd = 30)

# Generate synthetic data for obesity rates
obesity_rates <- seq(20, 40, length.out = length(years)) + rnorm(length(years), sd = 2)

# Create a data frame for the overall trends
overall_trend <- data.frame(Year = years, Testosterone = testosterone_levels, Obesity = obesity_rates)

# Generate obesity rates by age groups and race/ethnicities (hypothetical data)
age_groups <- c("18-25", "26-35", "36-45", "46-55", "56-65")
races <- c("White", "Black", "Hispanic", "Asian", "Other")
obesity_by_group <- expand.grid(Year = years, AgeGroup = age_groups, Race = races)
obesity_by_group$ObesityRate <- runif(nrow(obesity_by_group), 20, 40) + rnorm(nrow(obesity_by_group), sd = 5)

# Plotting the overall trend of testosterone levels
ggplot(overall_trend, aes(x = Year)) +
  geom_line(aes(y = Testosterone, color = "Testosterone")) +
  geom_line(aes(y = Obesity, color = "Obesity")) +
  scale_color_manual(values = c("Testosterone" = "blue", "Obesity" = "red")) +
  labs(title = "Trend in Testosterone Levels and Obesity Rates (1995-2024)", y = "Level/Rate", color = "Legend") +
  theme_minimal()

# Display a subset of the detailed




