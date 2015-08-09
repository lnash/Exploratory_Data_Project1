##get data

datetime <- strptime(paste(subset$Date, subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GlobalActivePower <- as.numeric(subset$Global_active_power)

##plot data

plot(datetime, GlobalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

##save file

dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
