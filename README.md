## Introduction

This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, a popular repository for machine learning
datasets. In particular, we will be using the "Individual household
electric power consumption Data Set" which I have made available on
the course web site:


* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.


The following descriptions of the 9 variables in the dataset are taken
from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

Our overall goal here is simply to examine how household energy usage
varies over a 2-day period in February, 2007.

### **plot1.R**

* Clear the workspace variables

* The data is loaded from the household_power_consumption.txt file

* The data is subsetted for the dates 2007-02-01 and 2007-02-02.

* Convert the global active power variable to numeric in R using the as.numeric() function
functions.

* Open a connection for the png file plot1.png with a width of 480
pixels and a height of 480 pixels.

* Set the number of columns for the Plot to 1,1

* Plot the histogram of global active power values

* close the connection


### plot1.png


![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.png) 


### **plot2.R**

* Clear the workspace variables

* The data is loaded from the household_power_consumption.txt file

* The data is subsetted for the dates 2007-02-01 and 2007-02-02.

* Convert the global active power variable to numeric in R using the as.numeric() function
functions.

* Concatenate Date and Time variables and use strptime function to convert it into date
convert voltage variable to numeric

* Open a connection for the png file plot2.png with a width of 480
pixels and a height of 480 pixels.

* Set the number of columns for the Plot to 1,1

* Plot the graph for Global Active power values

* close the connection


### plot2.png

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3.png) 


### **plot3.R**

* Clear the workspace variables

* The data is loaded from the household_power_consumption.txt file

* The data is subsetted for the dates 2007-02-01 and 2007-02-02.

* Concatenate Date and Time variables and use strptime function to convert it into date
convert voltage variable to numeric

* Convert Sub_meter_reading1 to numeric

* Convert Sub_meter_reading2 to numeric

* Convert Sub_meter_reading3 to numeric

* Open a connection for the png file plot3.png with a width of 480
pixels and a height of 480 pixels.

* Set the number of columns for the Plot to 1,1

* Plot the graph for sub meter readings in the same plot with the legends annotation

* close the connection

### plot3.png

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4.png) 


### **plot4.R**

* Clear the workspace variables

* The data is loaded from the household_power_consumption.txt file

* The data is subsetted for the dates 2007-02-01 and 2007-02-02.

* Convert the global active power variable to numeric using the as.numeric() function
functions.

* Convert the global reactive power variable to numeric

* Concatenate Date and Time variables and use strptime function to convert it into date
convert voltage variable to numeric

* Convert Sub_meter_reading1 to numeric

* Convert Sub_meter_reading2 to numeric

* Convert Sub_meter_reading3 to numeric

* Open a connection for the png file plot4.png with a width of 480
pixels and a height of 480 pixels.

* Set the number of columns for the Plot to 2,2

* Plot all the 4 different plots in the order is columnwise.
  1. Plot for Global Active Power vs datetime
  2. Plot for sub meter readings in the same plot with the legends annotation
  3. Plot for Voltage vs datetime
  4. Plot for global reactive variable vs datetime

* close the connection


### plot4.png

![plot of chunk unnamed-chunk-5](figure/unnamed-chunk-5.png) 

