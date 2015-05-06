
# plot2.R  generates the respective plot
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

# Plot 2 plots the distribution of the Global Active Powers in kilowatts by Weekdays
par(mfrow = c(1,1)) #to be sure. we only want 1 plot now
x <- data$Timestamp
y <- data$Global_active_power
plot(x,y, type="l", xlab = "", ylab="Global Active Power (kilowatts)")


# and plot it in a PNG file device in the directory
png("plot2.png", width=480, height=480, units="px")
plot(x,y, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()


