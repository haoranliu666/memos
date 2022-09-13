?lm #help lm
??lm #search lm

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

x <- c(1:3, NA)
is.na(x) #缺失值
x <- c(1:3, NA, 0/0)
is.nan(y) #not a number
is.na(y) #NaN is NA

x[1]
x[1:3]
x[(!is.na(x))]
(x+1)[(!is.na(x)) & x>1]
x[is.na(x)] <- 0


rm(list=ls())
gc()

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
