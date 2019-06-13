source("shared.R")

png(file="plot3.png")
with(power_consumption, {
  plot(datetime, Sub_metering_1, xlab="", type="n", ylab="Energy sub metering")
  lines(datetime, Sub_metering_1)
  lines(datetime, Sub_metering_2, col="Red")
  lines(datetime, Sub_metering_3, col="Blue")
})
legend(
  "topright",
  legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
  col = c("Black", "Red", "Blue"), 
  lty=c(1,1,1)
)
dev.off()