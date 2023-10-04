data<-veri
data<-as.data.frame(data)


for ( i in 1:100){
  
  v1co<-sample(YETENEK1,1,replace=F)
  v1s<-sample(YETENEK1,1,replace=F)
  
  
  #
  v2co<-sample(YETENEK1,1,replace=F)
  v2s<-sample(YETENEK2,1,replace=F)
  
  #
  
  v3co<-sample(YETENEK1,1,replace=F)
  v3s<-sample(YETENEK3,1,replace=F)
  
  
  #
  v4co<-sample(YETENEK1,1,replace=F)
  v4s<-sample(YETENEK4,1,replace=F)
  
  
  
  #
  v5co<-sample(YETENEK2,1,replace=F)
  v5s<-sample(YETENEK1,1,replace=F)
  
  
  #
  v6co<-sample(YETENEK2,1,replace=F)
  v6s<-sample(YETENEK2,1,replace=F)
  
  
  #
  v7co<-sample(YETENEK2,1,replace=F)
  v7s<-sample(YETENEK3,1,replace=F)
  
  
  #
  v8co<-sample(YETENEK2,1,replace=F)
  v8s<-sample(YETENEK4,1,replace=F)
  
  
  
  #
  v9co<-sample(YETENEK3,1,replace=F)
  v9s<-sample(YETENEK1,1,replace=F)
  
  
  #
  v10co<-sample(YETENEK3,1,replace=F)
  v10s<-sample(YETENEK2,1,replace=F)
  
  
  
  #
  v11co<-sample(YETENEK3,1,replace=F)
  v11s<-sample(YETENEK3,1,replace=F)
  
  
  
  #
  v12co<-sample(YETENEK3,1,replace=F)
  v12s<-sample(YETENEK4,1,replace=F)
  
  
  #
  v13co<-sample(YETENEK4,1,replace=F)
  v13s<-sample(YETENEK1,1,replace=F)
  
  
  #
  v14co<-sample(YETENEK4,1,replace=F)
  v14s<-sample(YETENEK2,1,replace=F)
  
  
  #
  v15co<-sample(YETENEK4,1,replace=F)
  v15s<-sample(YETENEK3,1,replace=F)
  
  
  #
  v16co<-sample(YETENEK4,1,replace=F)
  v16s<-sample(YETENEK4,1,replace=F)
  
  
  xv1 <- omega(
    form = data,
    thetas = abilities,
    ip = ZL,
    pa = c(v1co, v1s),
    options = c("A", "B", "C", "D", "E")
  )
  
  xv2 <- omega(
    form = data,
    thetas = abilities,
    ip = ZL,
    pa = c(v2co, v2s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  xv3 <- omega(
    form = data,
    thetas = abilities,
    ip = ZL,
    pa = c(v3co, v3s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  xv4 <- omega(
    form = data,
    thetas = abilities,
    ip = ZL,
    pa = c(v4co, v4s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  xv5 <- omega(
    form = data,
    thetas = abilities,
    ip = ZL,
    pa = c(v5co, v5s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv6 <- omega(
    form = data,
    thetas = abilities,
    ip = ZL,
    pa = c(v6co, v6s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv7 <- omega(
    form = data,
    thetas = abilities,
    ip = ZL,
    pa = c(v7co, v7s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv8 <- omega(
    form = data,
    thetas = abilities,
    ip = ZL,
    pa = c(v8co, v8s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv9 <- omega(
    form = data,
    thetas = abilities,
    ip = ZL,
    pa = c(v9co, v9s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  xv10 <- omega(
    form = data,
    thetas = abilities,
    ip = ZL,
    pa = c(v10co, v10s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv11 <- omega(
    form = data,
    thetas = abilities,
    ip = ZL,
    pa = c(v11co, v11s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv12 <- omega(
    form = data,
    thetas = abilities,
    ip = ZL,
    pa = c(v12co, v12s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv13 <- omega(
    form = data,
    thetas = abilities,
    ip = ZL,
    pa = c(v13co, v13s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv14 <- omega(
    form = data,
    thetas = abilities,
    ip = ZL,
    pa = c(v14co, v14s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  xv15 <- omega(
    form = data,
    thetas = abilities,
    ip = ZL,
    pa = c(v15co, v15s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv16 <- omega(
    form = data,
    thetas = abilities,
    ip = ZL,
    pa = c(v16co, v16s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  depo[i,]<-c(xv1$p.value, xv2$p.value,xv3$p.value,xv4$p.value,xv5$p.value,xv6$p.value,xv7$p.value,xv8$p.value,xv9$p.value,xv10$p.value,xv11$p.value,xv12$p.value,xv13$p.value,xv14$p.value,xv15$p.value,xv16$p.value )
  
  depo01<-ifelse(depo<0.001,1,0)
  depo02<-ifelse(depo<0.01,1,0)
  depo03<-ifelse(depo<0.05,1,0)
  
  deposonuç<- rbind(apply(depo01,2,mean),apply(depo02,2,mean),apply(depo03,2,mean))
  
  ########################
  
  deposonuç<-format(deposonuç,nsmall=2)
  
  write.table(
    deposonuç,
    "depobos.txt",
    sep = " ",
    quote = F,
    col.names = F,
    row.names = F,
    append = F
  )
  
  
}
