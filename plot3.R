library(dplyr)

power_consumption <- read.table("household_power_consumption.txt", sep=";", na.strings = "?", stringsAsFactors = F, header = T) %>%
  filter((as.Date("2007-02-01") <= as.Date(strptime(Date, "%d/%m/%Y"))) & (as.Date("2007-02-02") >= as.Date(strptime(Date, "%d/%m/%Y")))) %>%
  mutate(datetime = as.POSIXct(strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S")))

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