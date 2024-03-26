#### Preamble ####
# Purpose: The purpose of this script is to simulate and visualize the trend in testosterone and obesity rates in the United States from the year 1995 
# to 2024. The script generates tables and graphs to illustrate the overall trend in US dating rates, as well as the obesity rates among 
# various subgroups such as different age groups and race and ethnicities.
# Author: Chay Park
# Date: 26 March 2024
# Contact: chay.park@mail.utoronto.ca
# License: MIT
# Pre-requisites: install tidyverse packages


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

#### Test codes ####


# Test 1: Data Completeness
test_data_completeness <- function() {
  if (nrow(overall_trend) == length(years) && nrow(obesity_by_group) == length(years) * length(age_groups) * length(races)) {
    return("Data completeness test passed")
  } else {
    return("Data completeness test failed")
  }
}

# Test 2: Data Range
test_data_range <- function() {
  if (all(testosterone_levels >= 300 & testosterone_levels <= 1000) && all(obesity_by_group$ObesityRate >= 0 & obesity_by_group$ObesityRate <= 100)) {
    return("Data range test passed")
  } else {
    return("Data range test failed")
  }
}

# Test 3: Plot Generation
test_plot_generation <- function() {
  tryCatch({
    plot <- ggplot(overall_trend, aes(x = Year)) +
      geom_line(aes(y = Testosterone, color = "Testosterone")) +
      geom_line(aes(y = Obesity, color = "Obesity")) +
      scale_color_manual(values = c("Testosterone" = "blue", "Obesity" = "red")) +
      labs(title = "Trend in Testosterone Levels and Obesity Rates (1995-2024)", y = "Level/Rate", color = "Legend") +
      theme_minimal()
    if (!is.null(plot)) {
      return("Plot generation test passed")
    } else {
      return("Plot generation test failed")
    }
  }, error = function(e) {
    return("Plot generation test failed with error: " + e$message)
  })
}

# Run tests
cat(test_data_completeness(), "\n")
cat(test_data_range(), "\n")
cat(test_plot_generation(), "\n")






