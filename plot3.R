rm(list = ls())

## read the file in the working directory
hhpwr <- read.table("household_power_consumption.txt", sep = ";", 
                    header = TRUE, stringsAsFactors = FALSE)

## Subset the data set for the dates "1/2/2007", "2/2/2007"
subsetofhhpwr <- hhpwr[hhpwr$Date %in% c("1/2/2007", "2/2/2007"), ]

#globalactivepower <- as.numeric(subsetofhhpwr$Global_active_power)
submeter1 <-  as.numeric(subsetofhhpwr$Sub_metering_1)
submeter2 <-  as.numeric(subsetofhhpwr$Sub_metering_2)
submeter3 <-  as.numeric(subsetofhhpwr$Sub_metering_3)
datetime <- strptime(paste(subsetofhhpwr$Date, subsetofhhpwr$Time, 
                           sep=" "), "%d/%m/%Y %H:%M:%S")
## Open a png file plot3.R with height and width set to 480 pixels
png("plot3.png", height = 480, width = 480)

## Set the plot columns
par(mfcol = c(1,1))

## plot the graph of sub meter readings
plot(datetime, submeter1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(datetime, submeter2, type = "l", col = "red")
lines(datetime, submeter3, type = "l", col = "blue")
legend("topright", col = c("black", "red", "blue"), 
      legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1)

## close the png file connection
dev.off()
