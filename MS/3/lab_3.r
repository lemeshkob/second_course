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





#записуемо данні у файл
inputData <- read.table('data.txt', col.names = c('Value'))
inputData

#робимо вектор з вхідної таблиці inpudData
inputVector <-as.vector(t(inputData))
inputVector

# об'єм вибірки
n <- length(inputVector)
n

#p(дов)
p <- 0.95
p

#дисперсія
Despertion <- var(inputVector)
Despertion

#математичне сподівання
matSp <- mean(inputVector)
matSp

#сер. кв. відхилення
serKv <- sqrt(findsigma(inputVector))
serKv

#виправлена дисперсія
corDes <- (n/(n - 1)) * Despertion
corDes

#виправлене сер. кв. відхилення
corSerKv <- sqrt(corDes)
corSerKv

#pnorm() , qnorm() - вбудовані функції 
z <- qnorm(0.5+p/2)
error <- z * serKv / sqrt(n)
#Обрахуємо інтервали
matSp + c(-error, error)
k <- corSerKv * sqrt(n - 1)
#Нижня границя
x1 <- qchisq((1 + p) / 2, n - 1)
x1
#Верхня границя
x2 <- qchisq((1 - p) / 2, n - 1)
x2
k / c(sqrt(x1), sqrt(x2))
