rm(list = ls())

## read the file in the working directory
hhpwr <- read.table("household_power_consumption.txt", sep = ";", 
                    header = TRUE, stringsAsFactors = FALSE)

## Subset the data set for the dates "1/2/2007", "2/2/2007"
subsetofhhpwr <- hhpwr[hhpwr$Date %in% c("1/2/2007", "2/2/2007"), ]
globalactivepower <- as.numeric(subsetofhhpwr$Global_active_power)
datetime <- strptime(paste(subsetofhhpwr$Date, subsetofhhpwr$Time, 
                           sep=" "), "%d/%m/%Y %H:%M:%S")

## Open a png file plot2.R with height and width set to 480 pixels
png("plot2.png", height = 480, width = 480)

## Set the plot columns
par(mfcol = c(1,1))

## plot the graph of global active power
plot(datetime, globalactivepower, type = "l", xlab = "", 
     ylab = "Global Active Power (kilowatts)")

## close the png file connection
dev.off()
