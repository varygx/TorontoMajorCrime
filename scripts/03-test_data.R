#### Preamble ####
# Purpose: Test and validate dataset
# Author: Allen Uy
# Date: 23 January, 2024
# Contact: allen.uy@mail.utoronto.ca
# License: MIT
# Pre-requisites: Cleaned data CSV has been downloaded


#### Workspace setup ####
library("tidyverse")


#### Test data ####
cleaned_data <- read_csv("outputs/data/analysis_data.csv")
cleaned_data$report_year |> min() == 2014
cleaned_data$report_year |> max() == 2023

cleaned_data$report_month |> unique() |> length() == 12

cleaned_data$mci_category |> unique() |> length() == 7
cleaned_data$mci_category |> unique()

cleaned_data$premises_type |> unique()

cleaned_data$hood_158 |> min() == 1
cleaned_data$hood_158 |> max() == 158
cleaned_data$hood_158 |> max()
