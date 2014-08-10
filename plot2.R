##making the second plot

##read the data into R
epcdata<-read.table("./household_power_consumption.txt",sep=";",
header=TRUE,skip=66636,nrows=2880)
charactertime<-paste(epcdata[,1]," ",epcdata[,2])
newtime<-strptime(charactertime,format="%d/%m/%Y %H:%M:%S")
weekdaytime<-format(newtime,"%a %H %M")

#make the plot
png(filename="plot2.png",width = 480, height = 480, units = "px")
plot(newtime,epcdata[,3],type="l",xlab=" ",ylab="Global Active Power (kilowatts)")
dev.off()






