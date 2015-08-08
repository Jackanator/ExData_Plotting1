#Plot1
#Read and subset the .csv file
file<-"C:/Users/Jacky/Desktop/Coursera/4. Exploratory Data Analysis/Course Project 1/household_power_consumption.txt"
power<-read.csv2(file)
power.sub<-power[which(power$Date=="1/2/2007"|power$Date=="2/2/2007"),]

#Get the global power variable
gap<-power.sub$Global_active_power
gapn<-as.numeric(as.character(gap))

#Plot and output .png file
png(filename = "C:/Users/Jacky/Desktop/Coursera/4. Exploratory Data Analysis/Course Project 1/plot1.png",width = 480, height = 480)
hist(gapn,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()