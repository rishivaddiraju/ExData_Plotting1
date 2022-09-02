dFile <- "./data/household_power_consumption.txt"
data <- read.table(dFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
globactivepower <- as.numeric(subsetdata$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globactivepower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
