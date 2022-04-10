# Nomor 1.a, x=3 dan p=0,20
# P = dgeom(x-1,p)

x = 2
p = 0.20

P <- dgeom(x, p)
P

# Nomor 1.b, n = 1000, prob(p) = 0,20, dan X = 3
# mean (rgeom(n, p) == x)

n = 10000
p = 0.20
x = 3
mean(rgeom(n, prob = p) == x)


# Nomor 1.d, histogram distribusi geometrik dengan x = 3
# hist(rgeom(n, prob), main="Histogram of Geometric", col="steelblue")

n = 10000
prob = 0.20
hist(rgeom(n, prob), main="Histogram of Geometric", col="steelblue")


# 1.e nilai rataan dan varian dari distribusi geometrik 
# rataan = E(x) = 1/p 
# varian = Var(x) = (1-p)/p^2

p = 0.20

E = 1/0.20
Var = (1-0.20)/0.20^2
