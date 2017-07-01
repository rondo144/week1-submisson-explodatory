setwd(C:/data science coursera/Exploratory Data Analysis/week1) #set working directory

data1 <- read.csv("./household.txt", header=T, sep=';', na.strings="?") #read the data 

data1$Date <- as.Date(data_full$Date, format="%d/%m/%Y") # format dates

data <- subset(data1, subset=(Date >= "2007-02-01" & Date <= "2007-02-02")) # subsetting dates
                     
datetime <- paste(as.Date(data$Date), data$Time) #reformatting date/time

hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red") # creatind first plot

dev.copy(png, file="plot1.png", height=480, width=480) # save plot to file

dev.off() #devise shut down