pathWD <- getwd()
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
f <- "Dataset.zip"
download.file(url, file.path(pathWD, f))
exeFILE <- file.path("C:", "Program Files", "7-Zip", "7z.exe")
zipFile <- file.path(pathWD, f)
a <- paste0("\"", exeFILE, "\"")
b <- paste0("\"", zipFile, "\"")
parameter <- "x"
cmd <- paste(a, parameter, b)
system(cmd)
DatasetDIR <- file.path(pathWD, "UCI HAR Dataset")
list.files(DatasetDIR, recursive = TRUE)
rm(a, b , parameter, DatasetDIR)
