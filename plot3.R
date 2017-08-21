source("loaddata.R")

consumption_data <- load_data()

# time series plot of Energy sub metering 1, 2, & 3
attach(consumption_data)
png("plot3.png", width=480, height=480, units="px")
plot(Time, as.numeric(as.character(Sub_metering_1)), type="l", xlab="", ylab="Energy sub metering", ylim=c(0,40))
lines(Time, as.numeric(as.character(Sub_metering_2)), col="red")
lines(Time, as.numeric(as.character(Sub_metering_3)), col="blue")
legend("topright", lty=1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3" ))

dev.off()
