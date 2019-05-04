getwd()
## library tidyverse
library(tidyverse)

## function to store readable data to the variable 'inspections'
inspections <- read.csv("Food_inspections.csv", TRUE, ",")


## function to store readable data to the variable 'violations'
violations <- read.csv("Food_Inspection_Violations.csv", TRUE, ",")


## function to join the readable data by their HSISID number columns
all <- inspections %>%
  inner_join(violations, by="HSISID")

## glimpse at the HSISID results of the readable data 
glimpse(all)
