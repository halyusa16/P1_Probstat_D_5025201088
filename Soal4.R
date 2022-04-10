# Nomor 4.a fungsi probabilitas dari distribusi Chi-Square

x = 2
v = 10 

dchisq(x,v)


# Nomor 4.b Histogram dari distribusi Chi-Square dengan 100 data random

n = 100
v = 10

hist(rchisq(n, v), main = "Chi-Square Histogram", col = "steelblue", xlab = "X", ylab = "V")


# Nomor 4.c rataan dan variansi dari distribusi Chi-Square
# rataan E(x) = v
# varian Var(x) = 2v

v = 10
E = v
Var = 2 * v

