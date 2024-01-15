#### Preamble ####
# Purpose: Simulates a dataset of Major Crime reports from 2014 to 2023
# Author: Allen Uy
# Date: 16 January
# Contact: allen.uy@mail.utoronto.ca
# License: MIT
# Pre-requisites: Relevant libraries are installed

#### Workspace setup ####
library("tidyverse")


#### Simulate data ####
set.seed(42)

sim_data <- tibble(
  report_id = c(1:100),
  report_year = sample(2013:2023, 100, replace=TRUE)
)

