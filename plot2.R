source("loaddata.R")

consumption_data <- load_data()
# Time series plot of Global active power
attach(consumption_data)
png("plot2.png", width=480, height=480, units="px")
plot(Time, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
