setwd(C:/data science coursera/Exploratory Data Analysis/week1) #set working directory

data1 <- read.csv("./household.txt", header=T, sep=';', na.strings="?") #read the data 

data1$Date <- as.Date(data_full$Date, format="%d/%m/%Y") # format dates

data <- subset(data1, subset=(Date >= "2007-02-01" & Date <= "2007-02-02")) # subsetting dates

datetime <- paste(as.Date(data$Date), data$Time) #reformatting date/time

with(data, {plot(Sub_metering_1~Datetime, type="l", ylab="Global Active Power (kilowatts)", xlab="") lines(Sub_metering_2~Datetime,col='Red') lines(Sub_metering_3~Datetime,col='Blue')) # plot3

legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")) #Add legend

dev.copy(png, file="plot3.png", height=480, width=480) #save to file