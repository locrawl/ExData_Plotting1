## Flavius Popan
## 9/12/2015


## Calls helper functions to import dataset
source("helperFuns.R")
data <- makeDS()

## Create the specified histogram and save it as a .png
png(filename = "plot2.png", width = 480, height = 480)

plot(data$Timestamp, data$Global_active_power, type="l", 
     ylab="Global Active Power (kilowatts)", xlab="")

dev.off()