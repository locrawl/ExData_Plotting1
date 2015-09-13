## Flavius Popan
## 9/12/2015


## Calls helper functions to import dataset
source("helperFuns.R")
data <- makeDS()

## Create the specified histogram and save it as a .png
png(filename = "plot3.png", width = 480, height = 480)

## Make the first metering plot
plot(data$Timestamp, data$Sub_metering_1, type="l", 
     ylab="Energy sub metering", xlab="")

## Add the second
lines(data$Timestamp, data$Sub_metering_2, col="red")

## And the third
lines(data$Timestamp, data$Sub_metering_3, col="blue")

## Throw in the legend
legend('topright', c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
       col = c('black', 'red', 'blue'), lty=1)

dev.off()