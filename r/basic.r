?lm #help lm
??lm #search lm

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

#object
