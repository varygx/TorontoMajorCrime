#### Preamble ####
# Purpose: Clean data from raw csv and filter
# Author: Allen Uy
# Date: 23 January, 2024
# Contact: allen.uy@mail.utoronto.ca
# License: MIT
# Pre-requisites: CSV file has been downloaded

#### Workspace setup ####
library("tidyverse")
library("janitor")

#### Clean data ####
raw_data <- read_csv("inputs/data/raw_data.csv")

cleaned_data <- clean_names(raw_data)

cleaned_data <- cleaned_data |> select("report_year", "report_month", "premises_type", "location_type", "mci_category", "hood_158", "neighbourhood_158")

#### Save data ####
write_csv(cleaned_data, "outputs/data/analysis_data.csv")
