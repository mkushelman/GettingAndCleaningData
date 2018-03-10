pathWD <- getwd()
DatasetDIR <- file.path(pathWD, "UCI HAR Dataset")
trainDIR <- file.path(DatasetDIR, "train")
testDIR <- file.path(DatasetDIR, "test")

install.packages("data.table", dependencies = TRUE); library(data.table)
install.packages("dplyr", dependencies = TRUE); library(dplyr)

f <- file.path(DatasetDIR, "activity_labels.txt"); activity_labels <- fread(f)
f <- file.path(DatasetDIR, "features.txt"); features <- fread(f)
f <- file.path(trainDIR, "subject_train.txt"); subject_train <- fread(f)
f <- file.path(testDIR, "subject_test.txt"); subject_test <- fread(f)
f <- file.path(trainDIR, "y_train.txt"); y_train <- fread(f)
f <- file.path(testDIR, "y_test.txt"); y_test <- fread(f) 
f <- file.path(trainDIR, "X_train.txt"); X_train <- fread(f)
f <- file.path(testDIR, "X_test.txt"); X_test <- fread(f)
rm(DatasetDIR, trainDIR, testDIR, f)

# Set meaningful names
activity_labels <- mutate(activity_labels, V2, V3 = tolower(activity_labels$V2))
activity_labels$V2 <- NULL
setnames(activity_labels, names(activity_labels), c("ACTIVITY_ID","ACTIVITY_NAME"))

setnames(features, names(features), c("FEATURES_ID", "FEATURES_NAME"))
features <- features[grepl("mean\\(\\)|std\\(\\)", FEATURES_NAME)]  # Leave features only with mean() and std()
features$FEATURES_CODE <- features[, paste0("V", FEATURES_ID)]
features$FEATURES_TIDY <- gsub("\\(\\)", "", features$FEATURES_NAME)

#Merge train and test sets to create one set
subject <- rbind(subject_test,subject_train)
setnames(subject, names(subject), c("PERSON_ID"))

activity <- rbind(y_test,y_train)
setnames(activity, names(activity), c("ACTIVITY_ID"))
X <- rbind(X_test,X_train)
X <- cbind (X, subject, activity)
setkey(X, PERSON_ID, ACTIVITY_ID)

# Select data only with mean() and std()
dt <- select(X, PERSON_ID, ACTIVITY_ID, features$FEATURES_CODE)
dt <- merge(dt, activity_labels, by = "ACTIVITY_ID", all.x = TRUE)
dt <- select(dt, PERSON_ID, ACTIVITY_ID, ACTIVITY_NAME, features$FEATURES_CODE)
setkey(dt,PERSON_ID, ACTIVITY_ID, ACTIVITY_NAME )

# Prepare tidy data: dt_tidy
dt_tidy <- dt
## Change columns name  V1 ... in dt_tidy to features$FEATURES_TIDY
# setnames(dt_tidy, dt_tidy[4:69], features$FEATURES_TIDY)
names(dt_tidy)[4:69] <- features$FEATURES_TIDY
# Remove column ACTIVITY_ID
dt_tidy$ACTIVITY_ID <- NULL
dt_tidy_mean <- dt_tidy %>% group_by (PERSON_ID, ACTIVITY_NAME) %>% summarize_all(funs(mean))
# setkey(dt_tidy_mean, PERSON_ID, ACTIVITY_NAME)
dim(dt_tidy_mean)
names(dt_tidy_mean)
head(dt_tidy_mean, n = 3)

# Write the dt_tidy into dt_tidy.txt file
write.table(dt_tidy_mean, file = "tidy.txt", row.name=FALSE)
