## set up directories to R working directory
setwd("Y:/Training/6DSS/3 Getting & Cleaning Data/Main Source/week 4/3Quiz/Question1")
# source("week4 question1.R")

## download pdf file          
## url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf"
## f1 <- file.path(getwd(), "PUMSDataDict06.pdf")
## download.file(url, f1, mode="wb")

# download csv file
## url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
## f2 <- file.path(getwd(), "ss06hid.csv")
## download.file(url, f2)

# Load csv file into R (hh for household)
library(data.table)
hh <- data.table(read.csv(f2))
ColNames <- names(hh)
ColNamesSplitted <- strsplit(ColNames, split = "wgtp")
## Quetion1
ColNamesSplitted[[123]]
## [1] ""   "15"

