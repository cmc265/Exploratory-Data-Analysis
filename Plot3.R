# Read the Electric power consumption data set
hpc_data <- read.csv("household_power_consumption.txt",sep=";", as.is=T)

# Extract the data for dates 2007-02-01 and 2007-02-02
hpc <- hpc_data[which(hpc_data$Date=="1/2/2007" | hpc_data$Date=="2/2/2007"),]

# Open the png device
png(filename = "plot3.png", width = 480, height = 480)

#Print continous lines between values of Sub Metering sets
plot(strptime(paste(hpc$Date,hpc$Time, sep =" "), "%d/%m/%Y %H:%M:%S"), hpc$Sub_metering_1, cex=0, xlab="", ylab = "Energy Sub Metering")
par(new=TRUE)
lines(strptime(paste(hpc$Date,hpc$Time, sep =" "), "%d/%m/%Y %H:%M:%S"), hpc$Sub_metering_1)
par(new=TRUE)
lines(strptime(paste(hpc$Date,hpc$Time, sep =" "), "%d/%m/%Y %H:%M:%S"), hpc$Sub_metering_2, col = "red")
par(new=TRUE)
lines(strptime(paste(hpc$Date,hpc$Time, sep =" "), "%d/%m/%Y %H:%M:%S"), hpc$Sub_metering_3, , col = "blue")
legend("topright", pch = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


#close png device
dev.off()