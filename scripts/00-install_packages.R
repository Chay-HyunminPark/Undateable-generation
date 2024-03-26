#### Preamble ####
# Purpose: Installs packages needed to run scripts and Quarto document
# Author: Chay Park
# Date: 30 March 2024
# Contact: chay.park@mail.utoronto.ca
# License: MIT
# Pre-requisites: -

#### Workspace setup ####
## Installing packages (only needs to be done once per computer)
install.packages("tidyverse") # Contains data-related packages
install.packages("knitr") # To make tables
install.packages("janitor") # To clean datasets
install.packages("dplyr")
install.packages("ggplot2") # To make graphs
install.packages("usethis") 
install.packages("ggcorrplot") # For correlation matrix
# For models
install.packages("rstanarm")
install.packages("modelsummary")
