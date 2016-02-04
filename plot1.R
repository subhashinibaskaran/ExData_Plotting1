rm(list = ls())

## read the file in the working directory
hhpwr <- read.table("household_power_consumption.txt", sep = ";", 
                    header = TRUE, stringsAsFactors = FALSE)

## Subset the data set for the dates "1/2/2007", "2/2/2007"
subsetofhhpwr <- hhpwr[hhpwr$Date %in% c("1/2/2007", "2/2/2007"), ]
globalactivepower <- as.numeric(subsetofhhpwr$Global_active_power)

## Open a png file plot1.R with height and width set to 480 pixels
png("plot1.png", height = 480, width = 480)

## Set the plot columns
par(mfcol = c(1,1))

## plot the histogram of global active power
hist(globalactivepower, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")

## close the png file connection
dev.off()
