library(dplyr)

power_consumption <- read.table("household_power_consumption.txt", sep=";", na.strings = "?", stringsAsFactors = F, header = T) %>%
  filter((as.Date("2007-02-01") <= as.Date(strptime(Date, "%d/%m/%Y"))) & (as.Date("2007-02-02") >= as.Date(strptime(Date, "%d/%m/%Y")))) %>%
  mutate(datetime = as.POSIXct(strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S")))