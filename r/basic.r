?lm #help lm
??lm #search lm

rm(list=ls())
gc()

R comment code
- command + shift + c

Run code
- command + enter

Install package
- install.packages("reshape2")

#vectors
x <- c(10.4, 5.6, 3.1, 6.4, 21.7)
x <- 1:10
x <- 10:1
x <- rep(1, 3)
x <- seq(-1, 1, by=.2)
x <- seq(length=10, from=-1, by=.2)

log(x) #exp, sin, cos, tan, sqrt
length(x)
max(x) #min, sum, prod, mean, var
sort(x)
sort(x, decreasing = TRUE)
which(x == -0.6)

x <- c(1:3, NA)
is.na(x)
x <- c(1:3, NA, 0/0)
is.nan(x) #not a number
is.na(x) #NaN is NA

x[1]
x[1:3]
x[(!is.na(x))]
(x+1)[(!is.na(x)) & x>1]
x[is.na(x)] <- 0


#matrixs
matrix(1.5, nrow=2, ncol=3)
matrix(c(1,2,3,4,5,6), nrow=2, ncol=3)
matrix(c(1,2,3,4,5,6), nrow=2, ncol=3, byrow = TRUE)

diag(10)
diag(1.1, 10)
diag(c(2,3,4))

x = c(1,2,3)
y = c(4,5,6)
z = c(7,8,9)
a = cbind(x,y,z)
b = rbind(x,y,z)

library(matlib)
inv(a)

a[1,2]
a[1,]
a[,2]
a[c(1,2),c(2,3)]

t(a) #transpose
a*b #element-wise multiplication
a%*%b #actual matrix multiplication

#data
getwd()
setwd("/xx")
data <- read.csv("xx.csv", header = TRUE)

nrow(data)
ncol(data)
colnames(data)

summary(data)
summary(data$var1)
summary(data[c("var1", "var2")])

subset(data, select = c("var1", "var2"))

mean(data$var1[data$var2>3 & data$var2<1.2])

table(data$var1)

plot(data$var1, data$var2)
plot(data$var1, data$var2, xlab = "aaa", ylab = "bbb", main = "xxx")

data$var1square <- data$var1 * data$var1

#
for (i in 1:1000) {
    if (i %% 100 == 0)
        print(i)
}

#get file list
files <- list.files(path = "/Users/haoranliu/download")

#get a row
dt.dlcon <- dt.dlcon[1,]

#change a var
data[10, c('price')]

#paste a row
data = rbind(data, data[1,])

#delete a column
data$price <- NULL

#split a string
temp <- strsplit("haoran.txt", ".", fixed = TRUE) 
temp[[1]][1]

#read a file
#paste 2 strings
library("readr") 
text <-  read_file(file.path(paste("Cleaned/", "file.txt", sep="")))

#save to excel
#number to string
#paste 3 strings
library("writexl")
write_xlsx(data, paste("result", as.integer(10), as.integer(100), ".xlsx"))



#regression
results <- lm(y ~ x1 + x2 + x3)
summary(results)
