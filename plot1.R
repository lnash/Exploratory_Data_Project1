##read data

data <- read.table("C:/Users/nashlaur.CSR/Documents/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subset <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

##create histogram

globalActivePower <- as.numeric(subset$Global_active_power)
hist(globalActivePower, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

##save as file
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()

