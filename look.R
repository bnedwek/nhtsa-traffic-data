library(dplyr)

DATA_DIR <- 'data/FARS2015NationalCSV'

accidents <- read.csv(paste(DATA_DIR, 'ACC_AUX.CSV', sep='/'), stringsAsFactors=F)
persons   <- read.csv(paste(DATA_DIR, 'PER_AUX.CSV', sep='/'), stringsAsFactors=F)
vehicles  <- read.csv(paste(DATA_DIR, 'VEH_AUX.CSV', sep='/'), stringsAsFactors=F)

names(accidents) <- tolower(names(accidents))
names(persons)   <- tolower(names(persons))
names(vehicles)  <- tolower(names(vehicles))
