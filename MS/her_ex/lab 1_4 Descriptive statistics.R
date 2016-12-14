######################
# Data preprocessing
# пердварительная обработка данных

?mtcars  # используем встроенный датафрейм

df  <- mtcars
str(df)

# перекодирование значений в категориальные
df$vs  <- factor(df$vs  , labels = c("V", "S"))
df$am  <- factor(df$am  , labels = c("Auto", "Manual"))

######################
# Descriptive statistics
# описательная статистика

median(df$mpg)  # медиана
mode(df$mpg)    # мода
mean(df$disp)   # среднее
sd(df$hp)       # среднеквадратическое отклонение
range(df$cyl)   # размах

mean_disp  <- mean(df$disp)

mean(df$mpg[df$cyl == 6])

mean(df$mpg[df$cyl == 6 & df$vs == "V"])

sd(df$hp[df$cyl != 3 & df$am == "Auto"])

######################
# Aggregation
# Разделяет данные на подмножества и для каждого подмножества
# вычисляет сводные статистические данные

?aggregate

mean_hp_vs  <- aggregate(x = df$hp, by = list(df$vs), FUN = mean)

colnames(mean_hp_vs)  <- c("VS", "Mean HP")

aggregate(hp ~ vs, df, mean)

aggregate(hp ~ vs + am, df, mean)
aggregate(x = df$hp, by = list (df$vs, df$am), FUN = mean)

aggregate(x = df[,-c(8,9)], by = list(df$am), FUN = median)

aggregate(df[,c(1,3)], by = list(df$am, df$vs), FUN = sd)

aggregate(cbind(mpg, disp) ~ am + vs, df, sd)

my_stats  <- aggregate(cbind(mpg, disp) ~ am + vs, df, sd)

######################
# NA values
# обработка пропущенных данных

sum(is.na(df))

df$mpg[1:10]  <- NA

mean(df$mpg, na.rm = T)

aggregate(mpg ~am, df, sd)


######################
# Librarys
# полезные библиотеки и пакеты

# For a complete list of functions, use library(help = "name of library")


# Library "stats"   This package contains functions for statistical calculations and random number generation.
# install.packages("stats")
library(stats)
library(help = "stats")

# Library "psych"   Procedures for Psychological, Psychometric, and Personality Research

# install.packages("psych")
library(psych)
# library(help = "psych")

?describe

describe(x = df)

descr  <- describe(x = df[,-c(8,9)])

descr2  <- describeBy(x = df[,-c(8,9)], group = df$vs)

descr2$V
descr2$S

descr2  <- describeBy(x = df[,-c(8,9)], group = df$vs, mat = T, digits = 1)

descr3  <- describeBy(x = df[,-c(8,9)], group = df$vs, mat = T, digits = 1, fast = T)

describeBy(df$qsec, group = list(df$vs, df$am), digits = 1, 
           fast = T)

# NA values
# обработка пропущенных данных

sum(is.na(df))

df$mpg[1:10]  <- NA

mean(df$mpg, na.rm = T)

aggregate(mpg ~am, df, sd)

describe(na.rm = )

######################
# Library "dplyr" A Grammar of Data Manipulation

# install.packages("dplyr")
library(dplyr)
# library(help = "dplyr")

glimpse(df)
count(df, mpg)
