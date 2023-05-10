# Exploratory Data AnalysisCourse 1
# plot2

rm(list = ls())
data <- read.table("C:/Users/gogab/Documents/R Studio files/Data_household_power_consumption/household_power_consumption.txt", header = TRUE, 
                   sep = ";", na.strings = "?")

# convert to Date class
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

# Subset the data
data <- subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))

# Convert dates and times
data$datetime <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")

# Plot 2
data$datetime <- as.POSIXct(data$datetime)
attach(data)
plot(Global_active_power ~ datetime, type = "l",
     ylab = "Global Active Power (kilowatts)", xlab = "")
dev.copy(png, file = "plot2.png", height = 480, width = 480)
dev.off()


