source("shared.R")

png(file="plot1.png")
hist(
  power_consumption$Global_active_power, 
  xlab="Global Active Power (kilowatts)", 
  main = "Global Active Power", col = "Red"
)
dev.off()