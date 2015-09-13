## Flavius Popan
## 9/12/2015


## Calls helper functions to import dataset
source("helperFuns.R")
data <- makeDS()

## Create the specified histogram and save it as a .png
png(filename = "plot4.png", width = 480, height = 480)

## Create a 2x2 plot area
par(mfrow = c(2, 2))

## Make the first plot based on plot2
plot(data$Timestamp, data$Global_active_power, type="l", 
     ylab="Global Active Power (kilowatts)", xlab="")

## Add the second plot
plot(data$Timestamp, data$Voltage, type="l", 
     ylab="Voltage", xlab="datetime")

## And the third plot based on plot 3
plot(data$Timestamp, data$Sub_metering_1, type="l", 
     ylab="Energy sub metering", xlab="")
lines(data$Timestamp, data$Sub_metering_2, col="red")
lines(data$Timestamp, data$Sub_metering_3, col="blue")
legend('topright', c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
       col = c('black', 'red', 'blue'), lty=1)

## And finally add the last plot
plot(data$Timestamp, data$Global_reactive_power, type="l", 
     ylab="Global_reactive_power", xlab="datetime")

dev.off()