setwd("C:\\Users\\lemes\\Desktop\\STUDY\\MS\\3")

p<-5
q<-10

dataTable <- read.table("data.txt")
dataTable<-as.vector(t(dataTable))
dataTable<-matrix(dataTable,nrow=q,ncol=p)

mean_array<-c()

i<-1
while(i<=p){
  sum<-0
  k<-1
  while(k<=q){
    sum<-sum+as.numeric(dataTable[k,i])
    k<-k+1
  }
  mean_array[i]<-sum/q
  i<-i+1
}

Seredne<-mean(mean_array)

sumfact<-0
sumzal<-0

for(i in range(1:p)){
  sumfact<-sumfact+(mean_array[i]-Seredne)^2
}
sumfact<-sumfact*q

i<-1

while(i<=p){
  k<-1
  while(k<=q){
    sumzal<-sumzal+(dataTable[k,i]-Seredne)^2
    k<-k+1
  }
  i<-i+1
}

KriteriySp<-(sumfact/(p-1))/(sumzal/(p*(q-1)))
KriteriySp

KriteriyKr<-5.99
KriteriySp<-(sumfact/(p-1))/(sumzal/(p*(q-1)))


KriteriySp
KriteriyKr
KriteriySp<KriteriyKr


plot(y=mean_array,x=c(100,1000,3000,10000,50000),ylim = c(0,10),xlab = "size",ylab = "miliseconds")



