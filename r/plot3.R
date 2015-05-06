
# plot3.R  generates the respective plot
# note that you need the file preprocessing.R in order to run the script to read & clean the data

# Author: naulrich
# Date: 06.05.2015
# Coursera: Exploratory Data Analysis Project 1
####################################################

# the file preprocessing reads and preprocesses the data as required
# it will set up da data frame "data" containing the values for
# 2007-02-01 and 2007-02-02 we need for the exercises
source("preprocessing.R")

# Note, as my system runs in German I needed to change my settings:
# Sys.setlocale("LC_TIME", "English")

# Plot 3 plots the distribution Energy Submeter Readings (split in the 3 subgroups)
# by Weekdays
par(mfrow = c(1,1)) #to be sure. we only want 1 plot now
x <- data$Timestamp
y1 <- data$Sub_metering_1
y2 <- data$Sub_metering_2
y3 <- data$Sub_metering_3
plot(x,y1, col="black", type = "l", xlab = "", ylab="Energy sub metering")
lines(x,y2, col="red")
lines(x,y3, col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"), lty=c(1,1,1))

# and plot it in a PNG file device in the directory
png("plot3.png", width=480, height=480, units="px")

plot(x,y1, col="black", type = "l", xlab = "", ylab="Energy sub metering")
lines(x,y2, col="red")
lines(x,y3, col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"), lty=c(1,1,1))

dev.off()


