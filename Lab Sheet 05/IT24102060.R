setwd("C:\\Users\\IT24102060\\Desktop\\Lab05")
Delivery_Times <- read.table("Exercise - Lab 05.txt", header=TRUE, sep=",")

#2
histogram_data<-hist(Delivery_Times$Delivery_Time_.minutes., main="Histogram of Delivery Times", breaks = seq(20, 70, length=10), right = TRUE)

#4
breaks<- round(histogram_data$breaks)
breaks
freq<- histogram_data$counts
freq
mids<-histogram_data$mids
mids

cum_freq<- cumsum(freq)
new<- c()
for(i in 1:length(breaks)){
  if(i==1){
    new[i]=0
  }else{
    new[i]= cum.freq[i-1]
  }
}

plot(breaks, new, type='l',main="Cumulative Frequency Polygon for data", xlab = "Delivery Time", ylab = "Cumulative Frequency", ylim = c(0, max(cum.freq)))
cbind(Upper=breaks, CumFreq=new)
