#plot1.R code for Mike Davidson
#read in data
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", nrows= 100000, stringsAsFactors=TRUE)
#paste Date and Time together
data$DateTime <- paste(data$Date, data$Time)
#convert to Date format
data$DateTime <- as.Date(data$DateTime, format = "%d/%m/%Y %H:%M:%S")
#sub it out by dates needed
subdata <- subset(data, DateTime == "2007-02-01" | DateTime == "2007-02-02")
#now work on plotting 
png(file = "plot1.png", height=480, width=480)
#this lauches a graphics device, now build the plot
hist(subdata$Global_active_power, col="red", main = "Global_active_power")
#close it
dev.off()

