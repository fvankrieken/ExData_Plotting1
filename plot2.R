source("shared.R")

png(file="plot2.png")
with(power_consumption, {
  plot(
    datetime,
    Global_active_power, 
    xlab="",
    type="n", 
    ylab="Global Active Power (kilowatts)"
  )
  lines(datetime, Global_active_power)
})
dev.off()