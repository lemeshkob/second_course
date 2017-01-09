x <- c(24,
       29,
       31,
       17,
       20,
       26,
       31,
       16,
       22,
       21,
       29,
       19,
       26,
       20,
       20,
       27,
       25,
       29,
       20,
       19,
       21,
       20,
       26,
       30,
       23,
       31,
       21,
       23,
       26,
       26,
       30,
       29,
       19,
       27,
       30,
       26,
       16,
       24,
       22,
       33,
       21,
       21,
       27,
       29,
       23,
       14,
       26,
       26,
       18,
       19,
       22,
       28,
       24,
       18,
       24,
       23,
       30,
       30,
       23,
       28,
       18,
       24,
       28,
       19,
       26,
       23,
       20,
       18,
       24,
       26,
       19,
       26,
       29,
       18,
       19,
       20,
       21,
       28,
       24,
       27,
       25,
       17,
       28,
       36,
       28,
       27,
       33,
       17,
       19,
       25,
       20,
       22,
       24,
       19,
       32,
       33,
       39,
       23,
       27,
       26,
       34,
       16,
       39,
       25,
       28,
       23,
       16,
       27,
       11,
       18,
       26,
       23,
       23,
       16,
       26,
       18,
       28,
       23,
       31,
       28,
       25,
       16,
       17,
       15,
       22,
       26,
       16,
       26,
       28,
       24,
       17,
       27,
       14,
       17,
       16,
       24,
       13,
       19,
       23,
       19,
       22,
       19,
       25,
       23,
       24,
       22,
       23,
       27,
       22,
       26,
       25,
       29,
       30,
       19,
       20,
       11,
       26,
       21,
       29,
       16,
       21,
       21,
       21,
       29,
       28,
       29,
       25,
       21,
       28,
       31,
       27,
       18,
       23,
       23,
       24,
       21,
       14,
       23,
       20,
       25,
       23,
       19,
       15,
       19,
       16,
       19,
       22,
       27,
       27,
       15,
       28,
       32,
       31,
       28,
       22,
       23,
       19,
       21,
       21,
       26,
       20,
       35,
)
x

finda <- function(x)
{
  ylist <- list()
  a <- 0
  n <- length(x)
  for (i in 1:n)
  {
    a <- a + x[i]

  }
  a <- a/n
  return(a)
}
findsigma <- function(x)
{
  sigma <- 0
  n <- length(x)
  for (i in 1:n)
  {
    sigma <- sigma + (x[i]-mean(x))^2
  }
  sigma <- sigma/n
  return(sigma)
}


fitdist(x, "norm", "mle")
finda(x)
sqrt(findsigma(x))


plot(xx,y, xlim = c(1, 50), ylim = c(1,50))


parameterSigma <- list() 
j <- 0
Size<- list()
for (i in 1:length(x)){
  parameterSigma[j] <- sd(x[0:i]) 
  Size[j]<- i 
  j <- j+1
}
plot(Size,parameterSigma, ylim=c(0, 7), type="l") 

#?????? ???? :
#n <- ?????? ???????
#p <- ?????? ?????? (????)
#dsp <- ?????????
#mean <- ??????????? ??????????
#sigma 
n <- length(x) - 150
p <- 0.95
dsp <- var(x)
mean <- mean(x)
sigma <- sqrt(findsigma(x))
#ճ? ?????? :
#????????? ??????????? ???????? : 
c_dsp <- (n/(n - 1)) * dsp
c_deviation <- sqrt(c_dsp)
#pnorm() , qnorm() - ????????? ??????? 
z <- qnorm(0.5+p/2)
error <- z * sigma / sqrt(n)
#????????? ?????????
mean + c(-error, error)
k <- c_deviation * sqrt(n - 1)
#????? ???????
x1 <- qchisq((1 + p) / 2, n - 1)
#?????? ???????
x2 <- qchisq((1 - p) / 2, n - 1)
k / c(sqrt(x1), sqrt(x2))


