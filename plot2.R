#Plot2
#Read and subset the .csv file
file<-"C:/Users/Jacky/Desktop/Coursera/4. Exploratory Data Analysis/Course Project 1/household_power_consumption.txt"
power<-read.csv2(file)
power.sub<-power[which(power$Date=="1/2/2007"|power$Date=="2/2/2007"),]

#Get the global power and date variables
gap<-power.sub$Global_active_power
gapn<-as.numeric(as.character(gap))
daten<-as.character(power.sub$Date)
timen<-as.character(power.sub$Time)
x<-paste(daten,timen)
datetime<-strptime(x,"%d/%m/%Y %H:%M:%OS")

#Plot and output .png file
png(filename = "C:/Users/Jacky/Desktop/Coursera/4. Exploratory Data Analysis/Course Project 1/plot2.png",width = 480, height = 480)
plot(datetime,gapn,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()