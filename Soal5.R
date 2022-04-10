# Nomor 5.a fungsi probabilitas dari distribusi eskponensial

lambda = 3 
dexp(lambda)

# Nomor 5.b Histogram dari distribusi eksponensial untuk 10, 100, 1000, dan 10000 bilangan random 

n = 10
hist(rexp(n),main = "Exponential Histogram", col = "steelblue", xlab = "X", ylab = "y")

n = 100
hist(rexp(n),main = "Exponential Histogram", col = "steelblue", xlab = "X", ylab = "y")

n = 1000
hist(rexp(n),main = "Exponential Histogram", col = "steelblue", xlab = "X", ylab = "y")

n = 10000
hist(rexp(n),main = "Exponential Histogram", col = "steelblue", xlab = "X", ylab = "y")


# Nomor 5.c nilai rataan dan varian distribusi eksponensial 
# untuk n = 100 dan lambda = 3

lambda = 3

E = 1/lambda
var = 1/lambda^2







