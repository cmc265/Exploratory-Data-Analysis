# Read the Electric power consumption data set
hpc_data <- read.csv("household_power_consumption.txt",sep=";", as.is=T)

# Extract the data for dates 2007-02-01 and 2007-02-02
hpc <- hpc_data[which(hpc_data$Date=="1/2/2007" | hpc_data$Date=="2/2/2007"),]

# Open the png device
png(filename = "plot1.png", width = 480, height = 480)

#Print Histogram of Global_active_power
hist(as.numeric(hpc$Global_active_power), freq = TRUE, main = paste("Global Active Power"), xlab = "Global Active Power (kilowats)", col = "red")

#close png device
dev.off()