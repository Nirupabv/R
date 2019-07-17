data<-mtcars
setwd("C:\\Users\\Neeta\\Documents\\prog")
##text

write.table(data,file = "cars1.txt",row.names = FALSE,sep=",")
new<-read.table("cars1.txt",header = T,sep=",")
write.table(new,file = "my.txt",row.names = FALSE,sep="\t")
new1<-read.table("my.txt",header = T,sep="\t")
new
new1
