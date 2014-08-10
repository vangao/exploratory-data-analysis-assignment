##plot the first drawing, and please put the original data into the R working directory

##find the data from 2007/2/1 to 2007/2/2
#classes<-c("character",rep("NULL",8))
#datedata<-read.table("./household_power_consumption.txt",sep=";",header=TRUE,colClasses=classes)
#ranks1<-which(datedata=="1/2/2007")
#ranks2<-which(datedata=="2/2/2007")
#str(ranks1)

##read the corresponding data into memoray
epcdata<-read.table("./household_power_consumption.txt",sep=";",header=TRUE,skip=66636,nrows=2880)

#make the plot
png(filename="plot1.png",width = 480, height = 480, units = "px")
hist(epcdata[,3],main="Global Active Power",xlab="Global Active Power (kilowatts)",col="OrangeRed")
dev.off()














