#Plot4
#Read and subset the .csv file
file<-"C:/Users/Jacky/Desktop/Coursera/4. Exploratory Data Analysis/Course Project 1/household_power_consumption.txt"
power<-read.csv2(file)
power.sub<-power[which(power$Date=="1/2/2007"|power$Date=="2/2/2007"),]

#Variables for first plot
gap<-power.sub$Global_active_power
gapn<-as.numeric(as.character(gap))
daten<-as.character(power.sub$Date)
timen<-as.character(power.sub$Time)
x<-paste(daten,timen)
datetime<-strptime(x,"%d/%m/%Y %H:%M:%OS")

#Variables for second plot
Voltage<-as.numeric(as.character(power.sub$Voltage))

#Variables for third plot
sub1<-as.numeric(as.character(power.sub$Sub_metering_1))
sub2<-as.numeric(as.character(power.sub$Sub_metering_2))
sub3<-as.numeric(as.character(power.sub$Sub_metering_3))

#Variables for fourth plot
Global_reactive_power<-as.numeric(as.character(power.sub$Global_reactive_power))

#Plot and output .png file
png(filename = "C:/Users/Jacky/Desktop/Coursera/4. Exploratory Data Analysis/Course Project 1/plot4.png",width = 480, height = 480)
par(mfrow=c(2,2))
plot(datetime,gapn,type="l",xlab="",ylab="Global Active Power")
plot(datetime,Voltage,type="l")
plot(datetime,sub1,type="l",xlab="",ylab="Energy sub metering")
lines(datetime,sub2,type="l",col="red")
lines(datetime,sub3,type="l",col="blue")
legend("topright",pch="_",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
plot(datetime,Global_reactive_power,type="l")
dev.off()