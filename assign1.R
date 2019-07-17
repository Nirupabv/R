dat<-mtcars
normalize<-function(x){
  return((x-min(dat))/(max(dat)-min(dat)))
  #return(n)
}
head(mtcars)
abc<-as.data.frame(sapply(dat$hp,normalize))
abc
#abc<-dat$hp
#for(i in abc){
#  c<-normalize(i)
 # print(c)
#}
