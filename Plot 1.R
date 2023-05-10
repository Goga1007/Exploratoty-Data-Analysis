# Exploratory Data Analysis: Course 1
# plot 1

rm(list = ls())
data <- read.table("C:/Users/gogab/Documents/R Studio files/Data_household_power_consumption/household_power_consumption.txt", header = TRUE, 
                   sep = ";", na.strings = "?")
# convert to Date class
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

# Subset the required data
data <- subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))

# Plot 1
attach(data)
hist(Global_active_power, main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", col = "Red")

# Save file
dev.copy(png, file = "plot1.png", height = 480, width = 480)
dev.off()


