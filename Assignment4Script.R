library(tidyverse)

bpdata<- read.csv("bpdata.csv", header=T)
bpdata
print(bpdata)
BpBoxplot<-ggplot(bpdata, aes(x=as.factor(finaldecision), y=bloodp)) + 
  geom_boxplot(fill="slateblue", alpha=0.2) + 
  xlab("finaldecision")

print(BpBoxplot)


BpHisto<- bpdata %>%
  ggplot( aes(x=bloodp)) +
  geom_histogram( binwidth=20, fill="#69b3a2", color="#e9ecef", alpha=0.9) +
  ggtitle("Blood Pressure Histogram") 

print(BpHisto)

meanbyfinal<- aggregate.data.frame(x=bpdata$bloodp, 
                                   by=list(bpdata$finaldecision),
                                   FUN=mean)

print(meanbyfinal)

