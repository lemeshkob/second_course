######################
# Enviromet
# ��������� ������� �����

#install packages  
# ��������� �������, ����������� ���� ���
install.packages("dplyr")
install.packages("ggplot2")

#conect library    
# ����������� ��������� � �������, ����������� � ������ ������ ������ � RStudio
library(dplyr)
library(ggplot2)

# help
# ������� �� ������� ��� �������
?read.table
?read.csv

#change working directory  
# ����� ������� ����������
setwd("C://my labs")  
# setwd("~/my labs")  # ���������� ������� ����������

# Reading data
# ������ ������ �� �����
mydata <- read.csv('evals.csv')

######################
# Variable assiment
# ����� � �����������

# ���������� �������� ����������
my_var1  <- 42
my_var2  <- 35.25

# ���������� ������� �������� ����������/��������� (��� ���������� ����������)
my_var1 + 100
my_var1 + my_var2 - 12
my_var3  <- my_var1^2 + my_var2^2

######################
# Logical opperartions
# ���������� ��������

# ���������� ��������� ���������� ��������
my_var3 > 200
my_var3 > 3009
my_var1 == my_var2
my_var1 != my_var2
my_var3 >= 200
my_var3 <= 200

# �������� ��������� ���������� �������� � ����������
my_new_var  <- my_var1 == my_var2


######################
# Vectors
# ������

# ���������� ����� �� ���������
1 : 67
# �������� ����� �� ��������� � ������
my_vector1  <- 1:67
# ������� ������ � �������� � ���� ��������� ��������
my_vector2  <- c(-32, 45, 67, 12.78, 129, 0, -65)

# ������ � �������� �������
my_vector1[1]
my_vector1[3]

my_vector2[2]

# ������ � ���������� ��������� �������
my_vector2[c(1,2,3)]
my_vector2[1:3]
my_vector2[c(1,5,6,7,10)]

# �������������� �������� �� ����� ���������� �������
my_vector1 + 10
my_vector2 + 56

# ���������� �������� �� ����� ���������� �������
my_vector2 == 0
my_vector1 > 30

x  <- 23
x == 23
my_vector1 > 23
my_vector1 > x

# ����� ��������� �������, ���������� �������
my_vector2 > 0
my_vector2[my_vector2 > 0]
my_vector2[my_vector2 < 0]
my_vector2[my_vector2 == 0]

my_vector1[my_vector1 > 20 & my_vector1 < 30]
my_numbers  <- my_vector1[my_vector1 > 20 & my_vector1 < 30]
positive_numbers  <- my_vector2[my_vector2 > 0]

# ���������� ��������
v1  <- c(165, 178, 180, 181, 167, 178, 187, 167, 187)
mean_v1  <- mean(v1)
v1[v1 > mean_v1]
greater_than_mean  <- v1[v1 > mean_v1]

# ���������� �������
median(v1)

# ���������� ����
mode(v1)

# ���������� ��������������������� ���������� � ���������
sd(v1)
d_v1  <- sd(v1)^2
