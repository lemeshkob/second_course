######################
# Lists and dataframes

# �������� ������� �������
age  <- c(16, 18, 22, 27)
is_maried  <- c(F, F, T, T)
name  <- c("Olga", "Maria", "Nastya", "Polina")

# �������� ���������� �������
my_data  <- data.frame(Name = name, Age = age, Status = is_maried)

# �������� ���������� �� �����
mydata <- read.csv('evals.csv')

# ������� �� ������� ��� �������
?read.table
?read.csv

######################
# Summaries
# ���������� � ����������

head(mydata, 3) # ��������� ������ ����� 
tail(mydata)    # ��������� ��������� �����

View(mydata)    # ���� ��������� � ��������� ����

str(mydata)     # ��������� ����������

a <- names(mydata) # ����� ���������� � ����������

nrow(mydata)    # ���������� ����� (����������)
ncol(mydata)    # ���������� �������� (����������)

summary(mydata) # �������� ���������� � ����������

######################
# Variables in dataframes
# ������ � ���������� ����������� � ����������

b <- mydata$score

mean(mydata$score)

summary(mydata$score)

mydata$score * 2

mydata$ten_point_scale <- mydata$score * 2

summary(mydata$ten_point_scale)

mydata$new_varible <- 0
mydata$number <- 1:nrow(mydata)
summary(mydata$number)


# Subsetting
# ������������ ����������� ����������

mydata$score[1:10]

mydata[1,1]
mydata[c(2,193,225),1]
mydata[101:200,1]

mydata[5,]
mydata[,1] == mydata$score

mydata[,2:5]
head(mydata[,2:5])


# Subsetting with condition
# ������������ ����������� �� ������� 

mydata$gender
mydata$gender == 'female'
head(mydata[mydata$gender == 'female',1:3])

head(subset(mydata, gender == 'female'))
head(subset(mydata, score > 3.5))


# rbind, cbind
# ����������� ����������� � ���������

# ����������� ����������� ���������� � ��������� (���������� ���������� ������ ���������)
mydata2 <- subset(mydata, gender == 'female')
mydata3 <- subset(mydata, gender == 'male')
mydata4 <- rbind(mydata2, mydata3)

# ����������� ����������� ���������� � ��������� (���������� ���������� ������ ���������)
mydata5 <- mydata[,1:10]
mydata6 <- mydata[,11:24]
mydata7 <- cbind(mydata6, mydata5)
