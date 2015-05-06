
# plot4.R  generates the respective plot
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
Sys.setlocale("LC_TIME", "English")

# Plot 4 plots the 4 differtent subplots, thus we need to prepare the frame to do so:
par(mfrow = c(2,2)) # mfrow is row-wise

# start on top left
x <- data$Timestamp
y <- data$Global_active_power
plot(x,y, type="l", xlab = "", ylab="Global Active Power")

# next on top right, very same plot but with Voltage instead of Global Active Power
x <- data$Timestamp
y <- data$Voltage
plot(x,y, type="l", xlab = "datetime", ylab="Voltage")

# bottom left is the same as plot 3
x <- data$Timestamp
y1 <- data$Sub_metering_1
y2 <- data$Sub_metering_2
y3 <- data$Sub_metering_3
plot(x,y1, col="black", type = "l", xlab = "", ylab="Energy sub metering")
lines(x,y2, col="red")
lines(x,y3, col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"), lty=c(1,1,1))

# bottom right as top left but with Global Reactive Power 
x <- data$Timestamp
y <- data$Global_reactive_power
plot(x,y, type="l", xlab = "datetime", ylab="Global_reactive_power")






# and plot it in a PNG file device in the directory
png("plot4.png", width=480, height=480, units="px")


par(mfrow = c(2,2)) # mfrow is row-wise
# start on top left
x <- data$Timestamp
y <- data$Global_active_power
plot(x,y, type="l", xlab = "", ylab="Global Active Power")

# next on top right, very same plot but with Voltage instead of Global Active Power
x <- data$Timestamp
y <- data$Voltage
plot(x,y, type="l", xlab = "datetime", ylab="Voltage")

# bottom left is the same as plot 3
x <- data$Timestamp
y1 <- data$Sub_metering_1
y2 <- data$Sub_metering_2
y3 <- data$Sub_metering_3
plot(x,y1, col="black", type = "l", xlab = "", ylab="Energy sub metering")
lines(x,y2, col="red")
lines(x,y3, col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"), lty=c(1,1,1))

# bottom right as top left but with Global Reactive Power 
x <- data$Timestamp
y <- data$Global_reactive_power
plot(x,y, type="l", xlab = "datetime", ylab="Global_reactive_power")

dev.off()


