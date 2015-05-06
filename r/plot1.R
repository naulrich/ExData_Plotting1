# plot1.R  generates the respective plot
# note that you need the file preprocessing.R in order to run the script to read & clean the data

# Author: naulrich
# Date: 06.05.2015
# Coursera: Exploratory Data Analysis Project 1
####################################################

# the file preprocessing reads and preprocesses the data as required
# it will set up da data frame "data" containing the values for
# 2007-02-01 and 2007-02-02 we need for the exercises
source("preprocessing.R")

# Plot 1 plots the Frequency of the Global Active Powers in kilowatts
# first in the screen device, as I like to double check my plots :)
par(mfrow = c(1,1)) #to be sure. we only want 1 plot now
x <- data$Global_active_power
hist(x, xlab="Global Active Power (kilowatts)", main="Global Active Power", col="red")

# and plot it in a PNG file device in the directory
png("plot1.png", width=480, height=480, units="px")
hist(x, xlab="Global Active Power (kilowatts)", main="Global Active Power", col="red")
dev.off()


