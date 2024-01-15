#### Preamble ####
# Purpose: Test and validate dataset
# Author: Allen Uy
# Date: 16 January
# Contact: allen.uy@mail.utoronto.ca
# License: MIT
# Pre-requisites: Cleaned data CSV has been downloaded


#### Workspace setup ####
library("tidyverse")


#### Test data ####
cleaned_data <- read_csv("outputs/data/analysis_data.csv")
cleaned_data$report_year |> min() == 2014
cleaned_data$report_year |> max() == 2023