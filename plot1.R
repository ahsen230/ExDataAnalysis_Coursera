hpc <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")

hpc$dt <- strptime(paste(hpc$Date, hpc$Time), "%d/%m/%Y %H:%M:%S")

hpc$Date <- as.Date(hpc$Date, "%d/%m/%Y")


hpc_sub <- subset(hpc, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))
png("plot1.png", width=480, height=480)
hist(hpc_sub$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power")

dev.off()