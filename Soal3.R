# Nomor 3.a distribusi poisson peluang 6 bayi lahir di esok hari, dimana lambda = 4,5 
# dpois(x, lambda)

x= 6
lambda = 4.5

dpois(x, lambda)


# Nomor 3.b Histogram kelahiran 6 bayi dalam setahun(n=365)

x = 6
n = 356
hist(rpois(n, lambda), main="Poisson Histogram", col="steelblue")


# Nomor 3.d nilai rataan dan varian distribusi poisson 
# Rataan dan varians = lambda

lambda = 4.5
E = var = lambda 
E
var


