# Numeric

n1 <- 15 # double по умолчанию
n1
typeof(n1)

n2 <- -1.5
n2
typeof(n2)

# Character - как отд символы так и строки

c1 <- "c"
c1
typeof(c1)

c2 <- "Строка текста"
c2
typeof(c2)

# Logical

l1 <- TRUE
l1
typeof(l1)

l2 <- F
l2
typeof(l2)

# Vector - одномерные данные одинакового типа
# в том числе скаляры(даже одно число записывается как вектор)
v1 <- c(1, 2, 3, 4, 5)
v1
is.vector(v1)

v2 <- c("a", "b", "c")
v2
is.vector(v2)

v3 <- c(TRUE, TRUE, FALSE, FALSE, T)
v3
is.vector(v3)

# Matrix - два измерения, строки одинкаовой длины
# и данные одинакового типа

m1 <- matrix(c(T, T, F, F, T, F), nrow = 2)
m1

m2 <- matrix(c("a", "b", "c", "d"), nrow = 2, byrow = T)
m2

# Data Frame может сочетать векторы одинаковой длины
# с разными типами данных
# ближайший аналог excel-таблицы в R
# поэтому excel-таблицы обычно импортируются в Data Frame

vNumeric <- c(1, 2, 3)
vCharacter <- c("a", "b", "c")
vLogical <- c(T, F, T)

df <- as.data.frame(cbind(vNumeric, vCharacter, vLogical))
df # Data Frame - разные типы данных

# List - упорядоченная коллекция элементов и структур любого
# типа и длины. Может включать в себя так же данные типа list.
o1 <- c(1, 2, 3)
o2 <- c("a", "b", "c", "d")
o3 <- c(T, F, T, T, F)

list1 <- list(o1, o2, o3)
list1

list2 <- list(o1, o2, o3, list1) # list inside list!
list2

rm(list=ls()) # очищаем environment

# Построение графиков

plot(cos, 0, 2*pi)
plot(exp, 1, 5)
plot(dnorm, -3, +3)

plot(dnorm, -3, +3,
     col = "#cc0000",
     lwd = 7,
     main = "Standart normal distribution",
     xlab = "Z-score",
     ylab = "density")
# вектор Values
values <- c(2, 5, 7, 1, 8)

barplot(values)

# два вектора
height <- c(155, 167, 172, 188, 157)
weight <- c(45, 75, 81, 95, 60)

plot(height, weight)

dev.off() # очищение области графиков

diamonds <- read.csv("C:/Work/DataAnalyst/MyFirstGitHub/BasicR/P1_diamonds.csv", header = TRUE)
head(diamonds)

typeof(diamonds)

hist(diamonds$depth)

hist(diamonds$depth, breaks=100, col="#00ff00", main = "diamonds depth") # 100 разрешение колонок

# сформируем таблицу
cutd <- table(diamonds$cut)
cutd
barplot(cutd, col = "#cc0877", main = "Cut of diamonds")
