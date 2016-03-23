# Applied Statistical Programming Midterm
# Danielle Korman
# March 23, 2016

# Clear environment
rm(list=ls())

## Load libraries and set working directory
library(devtools)
library(roxygen2)
setwd("/Users/drk/Desktop/R/KormanMidterm")

# Create package called integrateIt
create("integrateIt")

# Run this to update package documentation
current.code <- as.package("integrateIt")
load_all(current.code)
document(current.code)
