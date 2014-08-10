##making the third plot

#read the data into R
epcdata<-read.table("./household_power_consumption.txt",sep=";",
header=TRUE,skip=66636,nrows=2880)
charactertime<-paste(epcdata[,1]," ",epcdata[,2])
newtime<-strptime(charactertime,format="%d/%m/%Y %H:%M:%S")

#make the plot
png(filename="plot3.png",width = 480, height = 480, units = "px")
plot(newtime,epcdata[,7],type="l",xlab=" ",ylab="Energy sub metering",col="black")
lines(newtime,epcdata[,8],col="red")
lines(newtime,epcdata[,9],col="blue")
legend("topright",col=c("black","red","blue"),lty=1,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()



