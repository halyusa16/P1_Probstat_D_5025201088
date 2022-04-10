# Soal 6.a fungsi probabilitas dari distribusi normal 
# P(X1 <= x <= X2), hitung Z-score dan plot data generate random dalam bentuk grafik

n = 100
mean = 50
sd = 8 

set.seed(1)
prob <- rnorm(n, mean, sd)

X1 = runif(1, min = min(prob), max = mean)
X2 = runif(1, min = mean, max(prob))

probabilitas1 <- pnorm(X1, mean, sd)
probabilitas2 <- pnorm(X2, mean, sd)

probabilitas <- probabilitas2 - probabilitas1

plot(prob)

# Soal 6.b generate histogram dari distribusi normal 
# breaks 50
# menggunakan format nama NRP_Nama_Probstat{Nama Kelas}_DNhistogram 

breaks = 50 
hist(prob, breaks, main = "5025201088_Halyusa Ard Wahyudi_Probstat_D_DNhistogram",
     col = "steelblue")


# Nomor 6.c varian dari hasil generate random nilai distribusi normal
# var = prob ^ 2

var = (sd(prob)) ^ 2



