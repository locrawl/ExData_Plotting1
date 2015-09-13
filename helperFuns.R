## Flavius Popan
## 9/12/2015
## Helper Functions
## No need for duplicate code; this script is called from each plot script
## to import the dataset


## Read in the refined dataset (date limited by README guidance)
makeDS <- function(dataCSV = "HPC_Subset.csv") {
    data <- read.csv(dataCSV, na.strings = "?", stringsAsFactors = FALSE)
    
    data$Date <- as.Date(data$Date, format = "%m/%d/%Y")
    
    ## Combine Date & Time into timestamp and assign in Time column
    data$Time <- as.POSIXct(paste(data$Date, data$Time), 
                            format="%Y-%d-%m %H:%M:%S")
    
    ## Drop the Date column since it's no longer needed
    data <- data[, -c(1)]
    
    ## Rename Time to Timestamp
    colnames(data)[1] <- "Timestamp"
    
    return(data)
}