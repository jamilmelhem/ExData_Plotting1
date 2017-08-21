# Load and filter power consumption data. 
# To be reused by all plot functions
load_data <- function(){
  filename <- "household_power_consumption.txt"
  df <- read.table(filename, header=TRUE, sep=";",
                   colClasses=c("character", "character", rep("numeric",7)), na="?")
  df$Time <- strptime(paste(df$Date, df$Time), "%d/%m/%Y %H:%M:%S")
  df$Date <- as.Date(df$Date, "%d/%m/%Y")
  # filter to data from for 01/02/2007 and 02/02/2007 Dates
  desire_dates <- as.Date(c("01/02/2007", "02/02/2007"), "%d/%m/%Y")
  df <- subset(df, Date %in% desire_dates)
}