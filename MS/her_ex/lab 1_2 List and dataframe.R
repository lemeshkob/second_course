######################
# Lists and dataframes

# создание списков вручную
age  <- c(16, 18, 22, 27)
is_maried  <- c(F, F, T, T)
name  <- c("Olga", "Maria", "Nastya", "Polina")

# создание датафрейма вручную
my_data  <- data.frame(Name = name, Age = age, Status = is_maried)

# создание датафрейма из файла
mydata <- read.csv('evals.csv')

# справка по команде или функции
?read.table
?read.csv

######################
# Summaries
# информация о датафрейме

head(mydata, 3) # несколько первых строк 
tail(mydata)    # несколько последних строк

View(mydata)    # весь датафрейм в отдельном окне

str(mydata)     # структура датафрейма

a <- names(mydata) # имена переменных в датафрейме

nrow(mydata)    # количество строк (наблюдений)
ncol(mydata)    # количество столбцов (переменных)

summary(mydata) # короткая информация о датафрейме

######################
# Variables in dataframes
# работа с отдельными переменными в датафрейме

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
# формирование подмножеств датафрейма

mydata$score[1:10]

mydata[1,1]
mydata[c(2,193,225),1]
mydata[101:200,1]

mydata[5,]
mydata[,1] == mydata$score

mydata[,2:5]
head(mydata[,2:5])


# Subsetting with condition
# формирование подмножеств по условию 

mydata$gender
mydata$gender == 'female'
head(mydata[mydata$gender == 'female',1:3])

head(subset(mydata, gender == 'female'))
head(subset(mydata, score > 3.5))


# rbind, cbind
# объединение подмножеств в датафрейм

# объединение подмножеств наблюдений в датафрейм (количество переменных должно совпадать)
mydata2 <- subset(mydata, gender == 'female')
mydata3 <- subset(mydata, gender == 'male')
mydata4 <- rbind(mydata2, mydata3)

# объединение подмножеств переменных в датафрейм (количество наблюдений должно совпадать)
mydata5 <- mydata[,1:10]
mydata6 <- mydata[,11:24]
mydata7 <- cbind(mydata6, mydata5)
