# Mini-Script for Reading and Cleaning the Data
# Author: naulrich
# Date: 06.05.2015
# Coursera: Exploratory Data Analysis Project 1
####################################################

# go to data source directory
oldw <- getwd()
setwd("~/Coursera FULL/4 -- Exploratory Data Analysis/Project1/exdata_data_household_power_consumption")

# load data and go back to working directory
rawdata <- read.table("household_power_consumption.txt", sep=";", header=TRUE)
setwd(oldw)
rm(oldw)

# at first, we get rid of the "NA" rows, i.e. the ones with "?" in
data <- rawdata
data[] <- lapply(data, as.character)
data[data=="?"]=NA
data[,3:9] <- lapply(data[,3:9], as.numeric)
data <- data[complete.cases(data),]

# second, convert dates, i.e. create a new timestamp object
data$Timestamp <- as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %T")

# subset to dates 2007-02-01 and 2007-02-02
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
data <- subset(data,  data$Date == "2007-02-01" | data$Date == "2007-02-02")

#and at this point, we dont need the rawdata anymore, so we let it go
rm(rawdata)
