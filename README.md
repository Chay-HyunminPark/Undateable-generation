# Gen Z Dating Dynamics: Statistical Insights and Neuroscience Perspectives on the 'Undateable Generation'

## Overview

This repository focuses on analyzing and visualizing data related to dating life of young adult in US. Through an analysis of trends spanning from 2004 to 2024, we investigate variations in ~. 

To use this folder, click the green "Code" button", then "Download ZIP". Move the downloaded folder to where you want to work on your own computer, and then modify it to suit.

## File Structure

The repo is structured as:

-   `input/data` contains the data sources used in analysis including the raw data.
-   `outputs/data` contains the cleaned dataset that was constructed.
-   `outputs/paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download and clean data.

## Reproducibility

### Dependencies
To reproduce the analysis, ensure you have the following R packages installed:

- `ggplot2`
- 'gridExtra'
- 'dplyr'
- 'tidyr'

You can install these packages using the following command:

```R
install.packages(c("ggplot2", "gridExtra","dplyr","tidyr"))
```

### Code Execution
The analysis is performed in R, and the code is available in the `analysis` directory. To execute the code, follow these steps:

1. Load the required libraries.
2. Read the cleaned data from the CSV file.
3. Perform data filtering and manipulation for specific analyses.
4. Generate tables and graphs to visualize trends.
  

## Code and Data Availability

The entire codebase and datasets used for this analysis are available in this repository. You can reproduce the analysis by following the instructions provided in the README.

For any questions or clarifications, feel free to reach out to the repository owner.

*Code and data supporting this analysis is available at: https://github.com/Chay-HyunminPark/Undateable-generation

## Statement on LLM Usage
Certain sections of the code were generated with the assistance of ChatGPT4. The complete chat history is available in `inputs/llms/usage.txt`. 
