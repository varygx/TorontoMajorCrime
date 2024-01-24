#### Preamble ####
# Purpose: Read in data from opendatatoronto on Major Crime
# Author: Allen Uy
# Date: 23 January, 2024
# Contact: allen.uy@mail.utoronto.ca
# License: MIT
# Pre-requisites: Know how to use opendatatoronto package

#### Workspace setup ####
library("opendatatoronto")
library("tidyverse")

#### Download data ####
package <- show_package("major-crime-indicators")

resources <- list_package_resources("major-crime-indicators")

datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

data <- filter(datastore_resources, row_number()==2) |> get_resource()

#### Save data ####

write_csv(data, "inputs/data/raw_data.csv")
