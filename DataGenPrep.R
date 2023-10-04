
###################### DATA 1 ##########################


a<-round(runif(K, 0.1, 0.80),3)
b<-round(runif(K, -2.5, 0),3)
cp<-rep(0,K)
dc<-rep("T",K)
op<-rep(0,K)
np<-rep(0,K)
key<-sample(LETTERS[1:5],K,replace=T)
w<-matrix(5,K,5)

IPAR1<-cbind(a,b,cp,dc,op,np,key,w)


write.table(IPAR1,paste(dosyaadı,".csv",sep=""),col.names=F,row.names=F,quote=F,sep=",",append=T)


#######################################################################


###################### DATA 2 ##########################


a<-round(runif(K, 0.1, 0.8),3)
b<-round(runif(K, 0.01, 2.50),3)
cp<-rep(0,K)
dc<-rep("T",K)
op<-rep(0,K)
np<-rep(0,K)
key<-sample(LETTERS[1:5],K,replace=T)
w<-matrix(5,K,5)

IPAR2<-cbind(a,b,cp,dc,op,np,key,w)


write.table(IPAR2,paste(dosyaadı,".csv",sep=""),col.names=F,row.names=F,quote=F,sep=",",append=T)


#######################################################################


###################### DATA 3 ##########################


a<-round(runif(K, 0.81, 1.5),3)
b<-round(runif(K, -2.5, 0),3)
cp<-rep(0,K)
dc<-rep("T",K)
op<-rep(0,K)
np<-rep(0,K)
key<-sample(LETTERS[1:5],K,replace=T)
w<-matrix(5,K,5)

IPAR3<-cbind(a,b,cp,dc,op,np,key,w)


write.table(IPAR3,paste(dosyaadı,".csv",sep=""),col.names=F,row.names=F,quote=F,sep=",",append=T)



#######################################################################


###################### DATA 4 ##########################


a<-round(runif(K, 0.81, 1.5),3)
b<-round(runif(K, 0.01, 2.5),3)
cp<-rep(0,K)
dc<-rep("T",K)
op<-rep(0,K)
np<-rep(0,K)
key<-sample(LETTERS[1:5],K,replace=T)
w<-matrix(5,K,5)

IPAR4<-cbind(a,b,cp,dc,op,np,key,w)


write.table(IPAR4,paste(dosyaadı,".csv",sep=""),col.names=F,row.names=F,quote=F,sep=",",append=T)



key<-matrix(c(IPAR1[,7],IPAR2[,7],IPAR3[,7],IPAR4[,7]), 1,I)

write.table(key,"anahtar.csv",col.names=F,row.names=F,quote=F,sep=",",append=F)


#######################################################################
###############################################################################



veri <-
  read.fwf(
    "Onderk5_80Items.DAT",
    widths = c(-15,rep(1, I)),
    header = F,
    stringsAsFactor = F
  )

key<-read.csv(
  "anahtar.csv",
  sep=",",
  header = F,
  stringsAsFactor = F
)






data1<-veri    #   VERİLER mc IRT için hazırlanıyor


for(i in 1:ncol(data1)){
  data1[,i]<-sub("A",c("0"),data1[,i])
  data1[,i]<-sub("B",c("1"),data1[,i])
  data1[,i]<-sub("C",c("2"),data1[,i])
  data1[,i]<-sub("D",c("3"),data1[,i])
  data1[,i]<-sub("E",c("4"),data1[,i])
  
}


key1<-as.matrix(key)
key1<-sub(c("A"),0,key1)
key1<-sub(c("B"),1,key1)
key1<-sub(c("C"),2,key1)
key1<-sub(c("D"),3,key1)
key1<-sub(c("E"),4,key1)






data1 <- as.data.frame(apply(data1, 1:2, as.numeric))

k <- as.numeric(unlist(key1))
