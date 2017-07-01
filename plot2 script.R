setwd(C:/data science coursera/Exploratory Data Analysis/week1) #set working directory

data1 <- read.csv("./household.txt", header=T, sep=';', na.strings="?") #read the data 

data1$Date <- as.Date(data_full$Date, format="%d/%m/%Y") # format dates

data <- subset(data1, subset=(Date >= "2007-02-01" & Date <= "2007-02-02")) # subsetting dates

datetime <- paste(as.Date(data$Date), data$Time) #reformatting date/time

plot(data$Global_active_power~data$Datetime, type="l", ylab="Global Active Power (kilowatts)", xlab="") # creating plot2

dev.copy(png, file="plot2.png", height=480, width=480) #save to file