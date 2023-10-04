library(mirt)
est<-"ML"
#Example 1: Detecting Item Preknowledge (dichotomous items)
nitem<-170
scores<-matrix(scan("SimScoresDich"),,nitem,byrow=T)#Read item scores
colnames(scores)<-paste("I",1:nitem,sep="")

nrep<-100
SubtestNitem<-50



bootmatrix<-matrix(NA,nrow=nrow(scores),ncol=nrep)

for (i in 1:nrep){


subscores<-scores[,sample(nitem,SubtestNitem)]

mod<-mirt(subscores,1,itemtype=rep('2PL',SubtestNitem))


a<- fscores(mod)

bootmatrix[,i] <-a

}


