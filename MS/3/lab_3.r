setwd("C:\\Users\\lemes\\Desktop\\STUDY\\MS\\3")

inputData <- scan('data.txt', vector('integer'))


#робимо вектор з вхідної таблиці inpudData
data <-as.vector(t(inputData))
data


n <- length(data) 
p <- 0.95 


error <- qnorm(p) * sd(data) / sqrt(n) 


sd <- sqrt((n/(n - 1)) * var(data)) * sqrt(n - 1) 
upper <- qchisq((1 + p) / 2, n - 1) 
lower <- qchisq((1 - p) / 2, n - 1) 

mean(data) + c(-error, error) 
sd / c(sqrt(upper), sqrt(lower)) 

x<-list() 
means_up<-list() 
means_down<-list() 
sds_up<-list() 
sds_down<-list() 
j=0 
for (i in 55:99){ 
  j=j+1 
  x[j]<-i 
  p<-i/100 
  error <- qnorm(p) * sd(data) / sqrt(n) 
  
  
  sd <- sqrt((n/(n - 1)) * var(data)) * sqrt(n - 1) 
  upper <- qchisq((1 + p) / 2, n - 1) 
  lower <- qchisq((1 - p) / 2, n - 1) 
  means_up[j]<-mean(data) + error 
  means_down[j]<-mean(data) - error 
  sds_up[j]<-sd / sqrt(lower) 
  sds_down[j]<-sd / sqrt(upper) 
} 
plot(x,means_up,type = "l",ylim = c(50,100)) 
for(j in 2:length(x)){ 
  lines(c(x[j-1],x[j]),c(means_down[j-1],means_down[j])) 
} 

x<-list() 
means_up<-list() 
means_down<-list() 
sds_up<-list() 
sds_down<-list() 
j=0 
dat<-data 
for (i in 20:length(data)){ 
  j=j+1 
  x[j]<-i 
  p<-0.95 
  data<-dat[1:i] 
  n <- length(data) 
  error <- qnorm(p) * sd(data) / sqrt(n) 
  sd <- sqrt((n/(n - 1)) * var(data)) * sqrt(n - 1) 
  upper <- qchisq((1 + p) / 2, n - 1) 
  lower <- qchisq((1 - p) / 2, n - 1) 
  means_up[j]<-mean(data) + error 
  means_down[j]<-mean(data) - error 
  sds_up[j]<-sd / sqrt(lower) 
  sds_down[j]<-sd / sqrt(upper) 
} 
plot(x,means_up,type = "l", ylim=c(20, 30)) 
for(j in 2:length(x)){ 
  lines(c(x[j-1],x[j]),c(means_down[j-1],means_down[j])) 
} 

Avg = mean(data) 

Ser_Vidh = sd(data) 
Desp <- Ser_Vidh^2 
t<- 1.976 
SV = sqrt(length(data) * Desp/(length(data) - 1)) 
NMatSpod = Avg - (t*SV/sqrt(length(data))) 
VMatSpod = Avg + (t*SV/sqrt(length(data))) 
q = 0.137; 
NMezha = SV*(1-q) 
VMezha = SV*(1+q)