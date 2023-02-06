library(tidyverse)
bpdata<- read.csv("bpdata.csv", header=T)
bpdata
print(bpdata)
BpBoxplot<-ggplot(bpdata, aes(x=as.factor(finaldecision), y=bloodp)) + 
  geom_boxplot(fill="slateblue", alpha=0.2) + 
  xlab("finaldecision")

print(BpBoxplot)
