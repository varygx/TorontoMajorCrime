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
  report_year = sample(2014:2023, 100, replace=TRUE),
  report_month = sample(c("January", "February", "March", "April", "May", 
                          "June", "July", "August", "September", "October", 
                          "November", "December"), 100, replace=TRUE),
  category = sample(c("Assault", "Auto theft", "Break and enter", "Homicide",
                      "Robbery", "Sexual violation", "Theft over"), 100, replace=TRUE),
  premises = sample(c("Transit", "Commercial", "Residential"), 100, replace=TRUE),
  location = sample(1:158, 100, replace=TRUE)
)

#### Test data ####
sim_data$report_year |> min() == 2014
sim_data$report_year |> max() == 2023

sim_data$report_month |> unique() |> length() == 12

sim_data$category |> unique() |> length() == 7

sim_data$premises |> unique() |> length() == 3

sim_data$location |> min() == 1
sim_data$location |> max() == 158


