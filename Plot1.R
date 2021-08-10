##Set working directory
setwd("/Users/alexandra/Documents/")

##Read in data
dataset1 <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')

##Subset data
data1 <- subset(dataset1, Date %in% c("1/2/2007","2/2/2007"))

##Define variable
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")

##Plot graph
hist(data1$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

##Set up image dims
png("plot1.png", width=480, height=480)
dev.off()
