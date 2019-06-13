source("shared.R")

png(file="plot4.png")
par(mfrow= c(2,2))
with(power_consumption, {
  plot(datetime, Global_active_power, xlab="", type="n", ylab="Global Active Power (kilowatts)")
  lines(datetime, Global_active_power)
  
  plot(datetime, Voltage, type="n")
  lines(datetime, Voltage)
  
  plot(datetime, Sub_metering_1, xlab="", type="n", ylab="Energy sub metering")
  lines(datetime, Sub_metering_1)
  lines(datetime, Sub_metering_2, col="Red")
  lines(datetime, Sub_metering_3, col="Blue")
  legend(
    "topright",
    legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
    col = c("Black", "Red", "Blue"), 
    lty=c(1,1,1)
  )
  
  plot(datetime, Global_reactive_power, type="n")
  lines(datetime, Global_reactive_power)
})
dev.off()