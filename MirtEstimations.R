

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


###################### Mc IRT  Kestirimi  ######################################


data2 <- reshMG(data1, items = 1:I, correct = k)

res.nrm <- nrm(data2)

ZL <- matrix(unlist(res.nrm$ZLpar), I, 10, byrow = T)

# ZL1 <- ZL [,6:10]
# 
# ZL2 <- ZL [,1:5]
# 
# ZLyeni<-cbind(ZL1,ZL2)   # Zeta Lamda matrisindeki zeta ve lamda değrlerinin yeri değiştirildi.


###########################################################


# for (i in 1:ncol(veri)) {
#   veri[,i]<-sub(" ",NA,veri[,i]) # NA için düzenleme yapılıyor
# }

#Using scored data, estimate ability levels needed for GBT and w index


##########    2PL yetenek Kestirimi için  1-0 matrisi oluşturuluyor.


scored.data <-
  as.data.frame(matrix(nrow = nrow(veri), ncol = ncol(veri)))
for (i in 1:nrow(scored.data)) {
  scored.data[i, ] <- as.numeric((veri[i, ] == key) * 1)
}


##############################  YETENEK KESTİRİMİ ###############################


ipar.dic <- est(scored.data, model = "2PL", engine = "ltm")$est
abilities <- mlebme(scored.data, ipar.dic)[, 1]

