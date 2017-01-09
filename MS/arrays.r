inputData_100 <- scan("veb.csv", vector('integer')) 
inputData_100 
Level <- as.numeric(cut(inputData_100, 10)) 
Level 


intervals <- array(c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0)) 

for (num in Level) { 
  intervals[num] = intervals[num] + 1 
} 

SizeOfInterval <- (max(inputData_100)-min(inputData_100))/10 
SeredneKvadratychneVidhyle <- sd(inputData_100) 

OchikuvaniChastoty <- c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0) 

for (variable in 1:10) { 
  OchikuvaniChastoty[variable] <-intervals[variable]*SizeOfInterval/SeredneKvadratychneVidhyle * sqrt(2*pi) 
} 
OchikuvaniChastoty 

Pirson_Spost <- 0 
for (i in 1:10) { 
  Pirson_Spost <- (intervals[i] - OchikuvaniChastoty[i])^2/OchikuvaniChastoty[i] + Pirson_Spost 
} 
Pirson_Spost 

MaxD<-0 
difference <- c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0) 
for(i in 1:10) { 
  difference[i]<-abs(intervals[i] - OchikuvaniChastoty[i]) 
} 
MaxD<-max(difference) 
MaxD 

Kolmogorov<-sqrt(10)*MaxD 
Kolmogorov
