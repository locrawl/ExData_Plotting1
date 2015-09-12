## Flavius Popan
## 9/12/2015
## Helper Functions
## No need for duplicate code; this script is called from each plot script
## to import the dataset


## Read in the refined dataset (date limited by README guidance)
makeDS <- function(dataCSV="HPC_Subset.csv") {
    data <- read.csv(dataCSV, na.strings="?")
    data$Date <- as.Date(data$Date, format = "%m/%d/%Y")
    
    return(data)
}