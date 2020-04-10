download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
              "power.zip", method = "curl")
unzip("power.zip")
power <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
newpower <- power[power$Date %in% c("1/2/2007","2/2/2007") ,]
gapower <- as.numeric(newpower$Global_active_power)
png("plot1.png", width=480, height=480)
hist(gapower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()