# Read the Electric power consumption data set
hpc_data <- read.csv("household_power_consumption.txt",sep=";", as.is=T)

# Extract the data for dates 2007-02-01 and 2007-02-02
hpc <- hpc_data[which(hpc_data$Date=="1/2/2007" | hpc_data$Date=="2/2/2007"),]

# Open the png device
png(filename = "plot2.png", width = 480, height = 480)

#Print continous lines between values of Global_active_power
plot(strptime(paste(hpc$Date,hpc$Time, sep =" "), "%d/%m/%Y %H:%M:%S"), hpc$Global_active_power, cex=0, xlab="", ylab = "Global Active Power (kilowats)")
lines(strptime(paste(hpc$Date,hpc$Time, sep =" "), "%d/%m/%Y %H:%M:%S"), hpc$Global_active_power)

#close png device
dev.off()