# 2.a ditribusi binomial peluang terdapat 4 pasien yang sembuh 
# terdapat 20 pasien dengan peluang sembuh sebesar 0.2
# dbinom (p, n, prob)

n = 20
p = 4 
prob = 0.2

binomial <- dbinom(p, n, prob)
binomial


# 2.b histogram dari kasus nomor 2.a. 

n = 20
p = 4
prob = 0.2

hist(rbinom(p, n, prob), xlab="X", ylab="Frekuensi", main="Binomial Histogram", col="steelblue")


# 2.c. nilai rataan dan varian dari dirstribusi binomial 
# rataan E(x) = np
# varian var(x) = np(1-p)

n = 20
p = 0.2

E = n*p
var = n*p*(1-p)
