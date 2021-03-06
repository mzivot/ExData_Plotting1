#Exploratory Analysis Course Project 1
#setwd("/Users/student/Documents/Classes/JHDataScience/ExploratoryAnalysis/Project1/Graphs/ExData_Plotting1")
#If zipped data file doesn't exist, download it and unzip it
fileUrl = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
if (!file.exists("household_power_consumption.txt")) {
    fileUrl = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    download.file(fileUrl,destfile ="./zipdata.zip",method = "curl")
    unzip("zipdata.zip")
}
ColNames = as.vector(as.matrix(read.table("household_power_consumption.txt",header=FALSE,sep=";",na.strings="?",nrows = 1))) #get header
data = read.table("household_power_consumption.txt",header=FALSE,sep=";",col.names = ColNames,na.strings="?",skip=66637,nrows = 2880) #read in selected data
attach(data)
png(filename = "plot1.png",width = 480, height = 480) #open png file to save graph
hist(Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main = "Global Active Power") #create graph
dev.off() #close png file