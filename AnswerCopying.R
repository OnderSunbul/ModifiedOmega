########################### KOPYA DURUMU ###########################
data<-as.data.frame(data)


############################## v1   ######################
depo<-matrix(NA, 100,16)
depo1<-matrix(NA, 100,16)
depo2<-matrix(NA, 100,16)
depo3<-matrix(NA, 100,16)
depo4<-matrix(NA, 100,16)

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
  
  data1.1<-data
  data1.1[v1co,c(cc1)]<-data1.1[v1s,c(cc1)]
  
  data1.2<-data
  data1.2[v2co,c(cc1)]<-data1.2[v2s,c(cc1)]
  
  data1.3<-data
  data1.3[v3co,c(cc1)]<-data1.3[v3s,c(cc1)]
  
  data1.4<-data
  data1.4[v4co,c(cc1)]<-data1.4[v4s,c(cc1)]
  
  data1.5<-data
  data1.5[v5co,c(cc1)]<-data1.5[v5s,c(cc1)]
  
  data1.6<-data
  data1.6[v6co,c(cc1)]<-data1.5[v6s,c(cc1)]
  
  data1.7<-data
  data1.7[v7co,c(cc1)]<-data1.7[v7s,c(cc1)]
  
  data1.8<-data
  data1.8[v8co,c(cc1)]<-data1.8[v8s,c(cc1)]
  
  data1.9<-data
  data1.9[v9co,c(cc1)]<-data1.9[v9s,c(cc1)]
  
  data1.10<-data
  data1.10[v10co,c(cc1)]<-data1.10[v10s,c(cc1)]
  
  data1.11<-data
  data1.11[v11co,c(cc1)]<-data1.11[v11s,c(cc1)]
  
  data1.12<-data
  data1.12[v12co,c(cc1)]<-data1.12[v12s,c(cc1)]
  
  data1.13<-data
  data1.13[v13co,c(cc1)]<-data1.13[v13s,c(cc1)]
  
  data1.14<-data
  data1.14[v14co,c(cc1)]<-data1.14[v14s,c(cc1)]
  
  data1.15<-data
  data1.15[v15co,c(cc1)]<-data1.15[v15s,c(cc1)]
  
  data1.16<-data
  data1.16[v16co,c(cc1)]<-data1.16[v16s,c(cc1)]
  