## Flavius Popan
## 9/12/2015


## Calls helper functions to import dataset
source("helperFuns.R")
data <- makeDS()

## Create the specified histogram and save it as a .png
png(filename = "plot1.png", width = 480, height = 480)

hist(data$Global_active_power, col="Red", main="Global Active Power", 
              xlab="Global Active Power (kilowatts)")

dev.off()