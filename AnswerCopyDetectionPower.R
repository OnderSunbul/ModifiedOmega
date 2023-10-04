
xv1 <- omega(
  form = data1.1,
  thetas = abilities,
  ip = ZL,
  pa = c(v1co, v1s),
  options = c("A", "B", "C", "D", "E")
)

xv2 <- omega(
  form = data1.2,
  thetas = abilities,
  ip = ZL,
  pa = c(v2co, v2s),
  options = c("A", "B", "C", "D", "E")
)


xv3 <- omega(
  form = data1.3,
  thetas = abilities,
  ip = ZL,
  pa = c(v3co, v3s),
  options = c("A", "B", "C", "D", "E")
)


xv4 <- omega(
  form = data1.4,
  thetas = abilities,
  ip = ZL,
  pa = c(v4co, v4s),
  options = c("A", "B", "C", "D", "E")
)


xv5 <- omega(
  form = data1.5,
  thetas = abilities,
  ip = ZL,
  pa = c(v5co, v5s),
  options = c("A", "B", "C", "D", "E")
)



xv6 <- omega(
  form = data1.6,
  thetas = abilities,
  ip = ZL,
  pa = c(v6co, v6s),
  options = c("A", "B", "C", "D", "E")
)



xv7 <- omega(
  form = data1.7,
  thetas = abilities,
  ip = ZL,
  pa = c(v7co, v7s),
  options = c("A", "B", "C", "D", "E")
)



xv8 <- omega(
  form = data1.8,
  thetas = abilities,
  ip = ZL,
  pa = c(v8co, v8s),
  options = c("A", "B", "C", "D", "E")
)



xv9 <- omega(
  form = data1.9,
  thetas = abilities,
  ip = ZL,
  pa = c(v9co, v9s),
  options = c("A", "B", "C", "D", "E")
)


xv10 <- omega(
  form = data1.10,
  thetas = abilities,
  ip = ZL,
  pa = c(v10co, v10s),
  options = c("A", "B", "C", "D", "E")
)



xv11 <- omega(
  form = data1.11,
  thetas = abilities,
  ip = ZL,
  pa = c(v11co, v11s),
  options = c("A", "B", "C", "D", "E")
)



xv12 <- omega(
  form = data1.12,
  thetas = abilities,
  ip = ZL,
  pa = c(v12co, v12s),
  options = c("A", "B", "C", "D", "E")
)



xv13 <- omega(
  form = data1.13,
  thetas = abilities,
  ip = ZL,
  pa = c(v13co, v13s),
  options = c("A", "B", "C", "D", "E")
)



xv14 <- omega(
  form = data1.14,
  thetas = abilities,
  ip = ZL,
  pa = c(v14co, v14s),
  options = c("A", "B", "C", "D", "E")
)


xv15 <- omega(
  form = data1.15,
  thetas = abilities,
  ip = ZL,
  pa = c(v15co, v15s),
  options = c("A", "B", "C", "D", "E")
)



xv16 <- omega(
  form = data1.16,
  thetas = abilities,
  ip = ZL,
  pa = c(v16co, v16s),
  options = c("A", "B", "C", "D", "E")
)


depo1[i,]<-c(xv1$p.value, xv2$p.value,xv3$p.value,xv4$p.value,xv5$p.value,xv6$p.value,xv7$p.value,xv8$p.value,xv9$p.value,xv10$p.value,xv11$p.value,xv12$p.value,xv13$p.value,xv14$p.value,xv15$p.value,xv16$p.value )

depo11<-ifelse(depo1<0.001,1,0)
depo12<-ifelse(depo1<0.01,1,0)
depo13<-ifelse(depo1<0.05,1,0)

depo1sonuç<- rbind(apply(depo11,2,mean),apply(depo12,2,mean),apply(depo13,2,mean))

########################

depo1sonuç<-format(depo1sonuç,nsmall=2)

write.table(
  depo1sonuç,
  "depo1.txt",
  sep = " ",
  quote = F,
  col.names = F,
  row.names = F,
  append = F
)


}


####################################### V2 ##########################################

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
  
  
  
  
  
  
  
  cc1<-sample(c(1:K),(K*koranı))          #kopya çekilen maddelerin seçimi
  cc2<-sample(c((K+1):(2*K)),(K*koranı))
  cc3<-sample(c((2*K+1):(3*K)),(K*koranı))
  cc4<-sample(c((3*K+1):(4*K)),(K*koranı))
  
  
  #######
  
  data2.1<-data
  data2.1[v1co,c(cc2)]<-data2.1[v1s,c(cc2)]
  
  data2.2<-data
  data2.2[v2co,c(cc2)]<-data2.2[v2s,c(cc2)]
  
  data2.3<-data
  data2.3[v3co,c(cc2)]<-data2.3[v3s,c(cc2)]
  
  data2.4<-data
  data2.4[v4co,c(cc2)]<-data2.4[v4s,c(cc2)]
  
  data2.5<-data
  data2.5[v5co,c(cc2)]<-data2.5[v5s,c(cc2)]
  
  data2.6<-data
  data2.6[v6co,c(cc2)]<-data2.5[v6s,c(cc2)]
  
  data2.7<-data
  data2.7[v7co,c(cc2)]<-data2.7[v7s,c(cc2)]
  
  data2.8<-data
  data2.8[v8co,c(cc2)]<-data2.8[v8s,c(cc2)]
  
  data2.9<-data
  data2.9[v9co,c(cc2)]<-data2.9[v9s,c(cc2)]
  
  data2.10<-data
  data2.10[v10co,c(cc2)]<-data2.10[v10s,c(cc2)]
  
  data2.11<-data
  data2.11[v11co,c(cc2)]<-data2.11[v11s,c(cc2)]
  
  data2.12<-data
  data2.12[v12co,c(cc2)]<-data2.12[v12s,c(cc2)]
  
  data2.13<-data
  data2.13[v13co,c(cc2)]<-data2.13[v13s,c(cc2)]
  
  data2.14<-data
  data2.14[v14co,c(cc2)]<-data2.14[v14s,c(cc2)]
  
  data2.15<-data
  data2.15[v15co,c(cc2)]<-data2.15[v15s,c(cc2)]
  
  data2.16<-data
  data2.16[v16co,c(cc2)]<-data2.16[v16s,c(cc2)]
  
  
  
  #######################################  Kopya Belirleme 2 ########################################################
  
  
  xv1 <- omega(
    form = data2.1,
    thetas = abilities,
    ip = ZL,
    pa = c(v1co, v1s),
    options = c("A", "B", "C", "D", "E")
  )
  
  xv2 <- omega(
    form = data2.2,
    thetas = abilities,
    ip = ZL,
    pa = c(v2co, v2s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  xv3 <- omega(
    form = data2.3,
    thetas = abilities,
    ip = ZL,
    pa = c(v3co, v3s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  xv4 <- omega(
    form = data2.4,
    thetas = abilities,
    ip = ZL,
    pa = c(v4co, v4s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  xv5 <- omega(
    form = data2.5,
    thetas = abilities,
    ip = ZL,
    pa = c(v5co, v5s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv6 <- omega(
    form = data2.6,
    thetas = abilities,
    ip = ZL,
    pa = c(v6co, v6s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv7 <- omega(
    form = data2.7,
    thetas = abilities,
    ip = ZL,
    pa = c(v7co, v7s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv8 <- omega(
    form = data2.8,
    thetas = abilities,
    ip = ZL,
    pa = c(v8co, v8s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv9 <- omega(
    form = data2.9,
    thetas = abilities,
    ip = ZL,
    pa = c(v9co, v9s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  xv10 <- omega(
    form = data2.10,
    thetas = abilities,
    ip = ZL,
    pa = c(v10co, v10s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv11 <- omega(
    form = data2.11,
    thetas = abilities,
    ip = ZL,
    pa = c(v11co, v11s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv12 <- omega(
    form = data2.12,
    thetas = abilities,
    ip = ZL,
    pa = c(v12co, v12s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv13 <- omega(
    form = data2.13,
    thetas = abilities,
    ip = ZL,
    pa = c(v13co, v13s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv14 <- omega(
    form = data2.14,
    thetas = abilities,
    ip = ZL,
    pa = c(v14co, v14s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  xv15 <- omega(
    form = data2.15,
    thetas = abilities,
    ip = ZL,
    pa = c(v15co, v15s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv16 <- omega(
    form = data2.16,
    thetas = abilities,
    ip = ZL,
    pa = c(v16co, v16s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  depo2[i,]<-c(xv1$p.value, xv2$p.value,xv3$p.value,xv4$p.value,xv5$p.value,xv6$p.value,xv7$p.value,xv8$p.value,xv9$p.value,xv10$p.value,xv11$p.value,xv12$p.value,xv13$p.value,xv14$p.value,xv15$p.value,xv16$p.value )
  
  depo21<-ifelse(depo2<0.001,1,0)
  depo22<-ifelse(depo2<0.01,1,0)
  depo23<-ifelse(depo2<0.05,1,0)
  
  depo2sonuç<- rbind(apply(depo21,2,mean),apply(depo22,2,mean),apply(depo23,2,mean))
  
  ########################
  
  depo2sonuç<-format(depo2sonuç,nsmall=2)
  
  write.table(
    depo2sonuç,
    "depo2.txt",
    sep = " ",
    quote = F,
    col.names = F,
    row.names = F,
    append = F
  )
  
  
}



####################################### v3 ##########################################

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
  
  
  
  
  
  
  
  
  cc1<-sample(c(1:K),(K*koranı))          #kopya çekilen maddelerin seçimi
  cc2<-sample(c((K+1):(2*K)),(K*koranı))
  cc3<-sample(c((2*K+1):(3*K)),(K*koranı))
  cc4<-sample(c((3*K+1):(4*K)),(K*koranı))
  
  
  #######
  
  data3.1<-data
  data3.1[v1co,c(cc3)]<-data3.1[v1s,c(cc3)]
  
  data3.2<-data
  data3.2[v2co,c(cc3)]<-data3.2[v2s,c(cc3)]
  
  data3.3<-data
  data3.3[v3co,c(cc3)]<-data3.3[v3s,c(cc3)]
  
  data3.4<-data
  data3.4[v4co,c(cc3)]<-data3.4[v4s,c(cc3)]
  
  data3.5<-data
  data3.5[v5co,c(cc3)]<-data3.5[v5s,c(cc3)]
  
  data3.6<-data
  data3.6[v6co,c(cc3)]<-data3.5[v6s,c(cc3)]
  
  data3.7<-data
  data3.7[v7co,c(cc3)]<-data3.7[v7s,c(cc3)]
  
  data3.8<-data
  data3.8[v8co,c(cc3)]<-data3.8[v8s,c(cc3)]
  
  data3.9<-data
  data3.9[v9co,c(cc3)]<-data3.9[v9s,c(cc3)]
  
  data3.10<-data
  data3.10[v10co,c(cc3)]<-data3.10[v10s,c(cc3)]
  
  data3.11<-data
  data3.11[v11co,c(cc3)]<-data3.11[v11s,c(cc3)]
  
  data3.12<-data
  data3.12[v12co,c(cc3)]<-data3.12[v12s,c(cc3)]
  
  data3.13<-data
  data3.13[v13co,c(cc3)]<-data3.13[v13s,c(cc3)]
  
  data3.14<-data
  data3.14[v14co,c(cc3)]<-data3.14[v14s,c(cc3)]
  
  data3.15<-data
  data3.15[v15co,c(cc3)]<-data3.15[v15s,c(cc3)]
  
  data3.16<-data
  data3.16[v16co,c(cc3)]<-data3.16[v16s,c(cc3)]
  
  
  #######################################  Kopya Belirleme 3 ########################################################
  
  
  xv1 <- omega(
    form = data3.1,
    thetas = abilities,
    ip = ZL,
    pa = c(v1co, v1s),
    options = c("A", "B", "C", "D", "E")
  )
  
  xv2 <- omega(
    form = data3.2,
    thetas = abilities,
    ip = ZL,
    pa = c(v2co, v2s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  xv3 <- omega(
    form = data3.3,
    thetas = abilities,
    ip = ZL,
    pa = c(v3co, v3s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  xv4 <- omega(
    form = data3.4,
    thetas = abilities,
    ip = ZL,
    pa = c(v4co, v4s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  xv5 <- omega(
    form = data3.5,
    thetas = abilities,
    ip = ZL,
    pa = c(v5co, v5s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv6 <- omega(
    form = data3.6,
    thetas = abilities,
    ip = ZL,
    pa = c(v6co, v6s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv7 <- omega(
    form = data3.7,
    thetas = abilities,
    ip = ZL,
    pa = c(v7co, v7s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv8 <- omega(
    form = data3.8,
    thetas = abilities,
    ip = ZL,
    pa = c(v8co, v8s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv9 <- omega(
    form = data3.9,
    thetas = abilities,
    ip = ZL,
    pa = c(v9co, v9s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  xv10 <- omega(
    form = data3.10,
    thetas = abilities,
    ip = ZL,
    pa = c(v10co, v10s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv11 <- omega(
    form = data3.11,
    thetas = abilities,
    ip = ZL,
    pa = c(v11co, v11s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv12 <- omega(
    form = data3.12,
    thetas = abilities,
    ip = ZL,
    pa = c(v12co, v12s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv13 <- omega(
    form = data3.13,
    thetas = abilities,
    ip = ZL,
    pa = c(v13co, v13s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv14 <- omega(
    form = data3.14,
    thetas = abilities,
    ip = ZL,
    pa = c(v14co, v14s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  xv15 <- omega(
    form = data3.15,
    thetas = abilities,
    ip = ZL,
    pa = c(v15co, v15s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv16 <- omega(
    form = data3.16,
    thetas = abilities,
    ip = ZL,
    pa = c(v16co, v16s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  depo3[i,]<-c(xv1$p.value, xv2$p.value,xv3$p.value,xv4$p.value,xv5$p.value,xv6$p.value,xv7$p.value,xv8$p.value,xv9$p.value,xv10$p.value,xv11$p.value,xv12$p.value,xv13$p.value,xv14$p.value,xv15$p.value,xv16$p.value )
  
  depo31<-ifelse(depo3<0.001,1,0)
  depo32<-ifelse(depo3<0.01,1,0)
  depo33<-ifelse(depo3<0.05,1,0)
  
  depo3sonuç<- rbind(apply(depo31,2,mean),apply(depo32,2,mean),apply(depo33,2,mean))
  
  ########################
  
  depo3sonuç<-format(depo3sonuç,nsmall=2)
  
  write.table(
    depo3sonuç,
    "depo3.txt",
    sep = " ",
    quote = F,
    col.names = F,
    row.names = F,
    append = F
  )
  
  
}


####################################### v3 ##########################################

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
  
  
  
  
  
  
  
  cc1<-sample(c(1:K),(K*koranı))          #kopya çekilen maddelerin seçimi
  cc2<-sample(c((K+1):(2*K)),(K*koranı))
  cc3<-sample(c((2*K+1):(3*K)),(K*koranı))
  cc4<-sample(c((3*K+1):(4*K)),(K*koranı))
  
  
  #######
  
  data4.1<-data
  data4.1[v1co,c(cc4)]<-data4.1[v1s,c(cc4)]
  
  data4.2<-data
  data4.2[v2co,c(cc4)]<-data4.2[v2s,c(cc4)]
  
  data4.3<-data
  data4.3[v3co,c(cc4)]<-data4.3[v3s,c(cc4)]
  
  data4.4<-data
  data4.4[v4co,c(cc4)]<-data4.4[v4s,c(cc4)]
  
  data4.5<-data
  data4.5[v5co,c(cc4)]<-data4.5[v5s,c(cc4)]
  
  data4.6<-data
  data4.6[v6co,c(cc4)]<-data4.5[v6s,c(cc4)]
  
  data4.7<-data
  data4.7[v7co,c(cc4)]<-data4.7[v7s,c(cc4)]
  
  data4.8<-data
  data4.8[v8co,c(cc4)]<-data4.8[v8s,c(cc4)]
  
  data4.9<-data
  data4.9[v9co,c(cc4)]<-data4.9[v9s,c(cc4)]
  
  data4.10<-data
  data4.10[v10co,c(cc4)]<-data4.10[v10s,c(cc4)]
  
  data4.11<-data
  data4.11[v11co,c(cc4)]<-data4.11[v11s,c(cc4)]
  
  data4.12<-data
  data4.12[v12co,c(cc4)]<-data4.12[v12s,c(cc4)]
  
  data4.13<-data
  data4.13[v13co,c(cc4)]<-data4.13[v13s,c(cc4)]
  
  data4.14<-data
  data4.14[v14co,c(cc4)]<-data4.14[v14s,c(cc4)]
  
  data4.15<-data
  data4.15[v15co,c(cc4)]<-data4.15[v15s,c(cc4)]
  
  data4.16<-data
  data4.16[v16co,c(cc4)]<-data4.16[v16s,c(cc4)]
  
  
  #######################################  Kopya Belirleme 4 ########################################################
  
  
  xv1 <- omega(
    form = data4.1,
    thetas = abilities,
    ip = ZL,
    pa = c(v1co, v1s),
    options = c("A", "B", "C", "D", "E")
  )
  
  xv2 <- omega(
    form = data4.2,
    thetas = abilities,
    ip = ZL,
    pa = c(v2co, v2s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  xv3 <- omega(
    form = data4.3,
    thetas = abilities,
    ip = ZL,
    pa = c(v3co, v3s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  xv4 <- omega(
    form = data4.4,
    thetas = abilities,
    ip = ZL,
    pa = c(v4co, v4s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  xv5 <- omega(
    form = data4.5,
    thetas = abilities,
    ip = ZL,
    pa = c(v5co, v5s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv6 <- omega(
    form = data4.6,
    thetas = abilities,
    ip = ZL,
    pa = c(v6co, v6s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv7 <- omega(
    form = data4.7,
    thetas = abilities,
    ip = ZL,
    pa = c(v7co, v7s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv8 <- omega(
    form = data4.8,
    thetas = abilities,
    ip = ZL,
    pa = c(v8co, v8s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv9 <- omega(
    form = data4.9,
    thetas = abilities,
    ip = ZL,
    pa = c(v9co, v9s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  xv10 <- omega(
    form = data4.10,
    thetas = abilities,
    ip = ZL,
    pa = c(v10co, v10s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv11 <- omega(
    form = data4.11,
    thetas = abilities,
    ip = ZL,
    pa = c(v11co, v11s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv12 <- omega(
    form = data4.12,
    thetas = abilities,
    ip = ZL,
    pa = c(v12co, v12s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv13 <- omega(
    form = data4.13,
    thetas = abilities,
    ip = ZL,
    pa = c(v13co, v13s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv14 <- omega(
    form = data4.14,
    thetas = abilities,
    ip = ZL,
    pa = c(v14co, v14s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  xv15 <- omega(
    form = data4.15,
    thetas = abilities,
    ip = ZL,
    pa = c(v15co, v15s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  
  xv16 <- omega(
    form = data4.16,
    thetas = abilities,
    ip = ZL,
    pa = c(v16co, v16s),
    options = c("A", "B", "C", "D", "E")
  )
  
  
  depo4[i,]<-c(xv1$p.value, xv2$p.value,xv3$p.value,xv4$p.value,xv5$p.value,xv6$p.value,xv7$p.value,xv8$p.value,xv9$p.value,xv10$p.value,xv11$p.value,xv12$p.value,xv13$p.value,xv14$p.value,xv15$p.value,xv16$p.value )
  
  depo41<-ifelse(depo4<0.001,1,0)
  depo42<-ifelse(depo4<0.01,1,0)
  depo43<-ifelse(depo4<0.05,1,0)
  
  depo4sonuç<- rbind(apply(depo41,2,mean),apply(depo42,2,mean),apply(depo43,2,mean))
  
  ########################
  
  depo4sonuç<-format(depo4sonuç,nsmall=2)
  
  write.table(
    depo4sonuç,
    "depo4.txt",
    sep = " ",
    quote = F,
    col.names = F,
    row.names = F,
    append = F
  )
  
  
}

