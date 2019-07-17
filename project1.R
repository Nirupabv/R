setwd("C:\\Users\\Neeta\\Documents\\prog")
dat<-read.csv("hurricanes.csv",header = T,sep=",")
View(dat)
library(dplyr)
sub<-select(dat,Name,Year,deaths,BaseDamage)
sub
#
dat%>%select(Name,Year,deaths,BaseDamage)%>%filter((Year==1950|Year==1960)&BaseDamage>40)->dat3
dat3
#
dat%>%mutate(DamageLevel=ifelse(BaseDamage>=300,"High","Less"))->dat4
dat4
#
ye<-group_by(dat,Year)
summarize(ye,mean(deaths))->avg
avg
