##plot the 4th drawing

#read the data in the correct time zone
epcdata<-read.table("./household_power_consumption.txt",sep=";",header=TRUE,skip=66636,nrows=2880)

#change the first two columes of data into time
charactertime<-paste(epcdata[,1]," ",epcdata[,2])
newtime<-strptime(charactertime,format="%d/%m/%Y %H:%M:%S")

#making the plot
png(filename="plot4.png",width = 480, height = 480, units = "px")
oldpar<-par(no.readonly=TRUE)
par(mfrow=c(2,2))
plot(newtime,epcdata[,3],type="l",xlab=" ",ylab="Glodal Active Power")
plot(newtime,epcdata[,5],type="l",xlab="datetime",ylab="Voltage",col="black")
plot(newtime,epcdata[,7],type="l",xlab=" ",ylab="Energy sub metering",col="black")
lines(newtime,epcdata[,8],col="red")
lines(newtime,epcdata[,9],col="blue")
legend("topright",col=c("black","red","blue"),lty=1,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
plot(newtime,epcdata[,4],type="l",xlab="datetime",ylab="Global_reactive_power",col="black")
par(oldpar)
dev.off()


