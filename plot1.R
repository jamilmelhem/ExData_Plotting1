source("loaddata.R")

consumption_data <- load_data()

# Plot the distribution of global active power
attach(consumption_data)
png("plot1.png", width=480, height=480, units="px")
hist(Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
