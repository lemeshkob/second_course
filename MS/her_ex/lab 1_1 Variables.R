######################
# Enviromet
# настройка рабочей среды

#install packages  
# установка пакетов, выполняется один раз
install.packages("dplyr")
install.packages("ggplot2")

#conect library    
# подключение библиотек и модулей, выполняется в каждом сеансе работы с RStudio
library(dplyr)
library(ggplot2)

# help
# справка по команде или функции
?read.table
?read.csv

#change working directory  
# смена рабочей директории
setwd("C://my labs")  
# setwd("~/my labs")  # подкаталог рабочей директории

# Reading data
# чтение данных из файла
mydata <- read.csv('evals.csv')

######################
# Variable assiment
# рабта с переменными

# установить значение переменной
my_var1  <- 42
my_var2  <- 35.25

# посмотреть текущее значение переменной/выражения (без сохранения результата)
my_var1 + 100
my_var1 + my_var2 - 12
my_var3  <- my_var1^2 + my_var2^2

######################
# Logical opperartions
# логические операции

# посмотреть результат логической операции
my_var3 > 200
my_var3 > 3009
my_var1 == my_var2
my_var1 != my_var2
my_var3 >= 200
my_var3 <= 200

# записать результат логической операции в переменную
my_new_var  <- my_var1 == my_var2


######################
# Vectors
# вектор

# отобразить числа из диапазона
1 : 67
# записать числа из диапазона в вектор
my_vector1  <- 1:67
# создать вектор и записать в него указанные значения
my_vector2  <- c(-32, 45, 67, 12.78, 129, 0, -65)

# доступ к элементу вектора
my_vector1[1]
my_vector1[3]

my_vector2[2]

# доступ к нескольким элементам вектора
my_vector2[c(1,2,3)]
my_vector2[1:3]
my_vector2[c(1,5,6,7,10)]

# арифметические операции со всеми элементами вектора
my_vector1 + 10
my_vector2 + 56

# логические операции со всеми элементами вектора
my_vector2 == 0
my_vector1 > 30

x  <- 23
x == 23
my_vector1 > 23
my_vector1 > x

# выбор элементов вектора, отвечающих условию
my_vector2 > 0
my_vector2[my_vector2 > 0]
my_vector2[my_vector2 < 0]
my_vector2[my_vector2 == 0]

my_vector1[my_vector1 > 20 & my_vector1 < 30]
my_numbers  <- my_vector1[my_vector1 > 20 & my_vector1 < 30]
positive_numbers  <- my_vector2[my_vector2 > 0]

# вычисление среднего
v1  <- c(165, 178, 180, 181, 167, 178, 187, 167, 187)
mean_v1  <- mean(v1)
v1[v1 > mean_v1]
greater_than_mean  <- v1[v1 > mean_v1]

# вычисление медианы
median(v1)

# вычисление моды
mode(v1)

# вычисление среднеквадратического отклонения и дисперсии
sd(v1)
d_v1  <- sd(v1)^2
