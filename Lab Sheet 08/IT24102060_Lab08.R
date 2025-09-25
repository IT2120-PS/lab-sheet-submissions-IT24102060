setwd("C:\\Users\\IT24102060\\Desktop\\IT24102060")

data<-read.table("Exercise - LaptopsWeights.txt", header=TRUE)
fix(data)
attach(data)

#Q1
popmn<-mean(Weight.kg.)
popsd<-sd(Weight.kg.)

#Q2
samples<-c()
n<-c()
for(i in 1:325){
  s<-sample(Weight.kg.,5,replace = TRUE)
  samples<-cbind(samples, s)
  n<-c(n,paste('S', i))
}

colnames(samples)=n

s.means<-apply(samples, 2 , mean)
s.sds<-apply(samples, 2, sd)

#Q3
samplesmean<-mean(s.means)
samplesd<-sd(s.means)

popmn
samplesmean

popsd
samplesd
