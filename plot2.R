## Read the table
data <- read.table("household_power_consumption.txt", header= TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

## Show the data
summary(data)

##Plot
datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

##Plot image
dev.copy(png,"plot2.png", width=480, height=480)
dev.off()
