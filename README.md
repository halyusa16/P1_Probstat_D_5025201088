# P1_Probstat_D_5025201088
Laporan dan Repository pengerjaan Praktikum Modul 1 Probstat 2022 oleh Halyusa Ard Wahyudi (5025201088)

# Soal 1
**Deskripsi:**

Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan
seseorang yang menghadiri acara vaksinasi sebelumnya.

### 1.a 
Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi
sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ?
(distribusi Geometrik)

```R 
# Nomor 1.a, x=3 dan p=0,20
# P = dgeom(x-1,p)

x = 2
p = 0.20

P <- dgeom(x, p)
P
```

Hasil

![image](https://user-images.githubusercontent.com/100200062/162611356-baa969b8-2ec1-49d3-8c3f-571b61f934ba.png)



### 1.b 
mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi
geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )

```R
# Nomor 1.b, n = 1000, prob(p) = 0,20, dan X = 3
# mean (rgeom(n, p) == x)

n = 10000
p = 0.20
x = 3
mean(rgeom(n, prob = p) == x)
```

Hasil

![image](https://user-images.githubusercontent.com/100200062/162611408-077ea0fc-a92f-41e8-984b-ae5d8682c57b.png)



### 1.c 
Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?

* Hasil yang didapatkan menunjukkan angka yang tidak berselisih jauh

### 1.d 
Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama

```R
# Nomor 1.d, histogram distribusi geometrik dengan x = 3
# hist(rgeom(n, prob), main="Histogram of Geometric", col="steelblue")

n = 10000
prob = 0.20
hist(rgeom(n, prob), main="Histogram of Geometric", col="steelblue")
```

Hasil 

![image](https://user-images.githubusercontent.com/100200062/162611496-5fcb8bdf-79a8-448a-a7e8-43c42b5417b8.png)



### 1.e
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.

```R
# 1.e nilai rataan dan varian dari distribusi geometrik 
# rataan = E(x) = 1/p 
# varian = Var(x) = (1-p)/p^2

p = 0.20

E = 1/0.20
Var = (1-0.20)/0.20^2
```

Hasil

![image](https://user-images.githubusercontent.com/100200062/162611513-40805e65-cb0b-462b-bbcd-1cd60614462a.png)



# Soal 2
**Deskripsi:**

Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

### 2.a 
Peluang terdapat 4 pasien yang sembuh.

```R
# 2.a ditribusi binomial peluang terdapat 4 pasien yang sembuh 
# terdapat 20 pasien dengan peluang sembuh sebesar 0.2
# dbinom (p, n, prob)

n = 20
p = 4 
prob = 0.2

binomial <- dbinom(p, n, prob)
binomial
```

Hasil 

![image](https://user-images.githubusercontent.com/100200062/162611602-2e430df9-2407-4992-9a14-4dd5fe4ffa74.png)



### 2.b 
Gambarkan grafik histogram berdasarkan kasus tersebut.

```R
# 2.b histogram dari kasus nomor 2.a. 

n = 20
p = 4
prob = 0.2

hist(rbinom(p, n, prob), xlab="X", ylab="Frekuensi", main="Binomial Histogram", col="steelblue")
```

Hasil 

![image](https://user-images.githubusercontent.com/100200062/162611624-69a16ab1-fd72-45da-bf5f-25389bd7d149.png)



### 2.c 
Nilai Rataan (μ) dan Varian ( ) dari σ² Distribusi Binomial.

```R
# 2.c. nilai rataan dan varian dari dirstribusi binomial 
# rataan E(x) = np
# varian var(x) = np(1-p)

n = 20
p = 0.2

E = n*p
var = n*p*(1-p)
```

Hasil 

![image](https://user-images.githubusercontent.com/100200062/162611648-9c0eb86a-0a2d-4ea4-b2c0-abb840c1238f.png)



# Soal 3
**Deskripsi:**

Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis
4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

### 3.a 
Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?

```R
# Nomor 3.a distribusi poisson peluang 6 bayi lahir di esok hari, dimana lambda = 4,5 
# dpois(x, lambda)

x= 6
lambda = 4.5

dpois(x, lambda)
```

Hasil 

![image](https://user-images.githubusercontent.com/100200062/162611785-01df0646-b1ff-4cd7-8ac3-96f7ea6a1932.png)



### 3.b 
simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama
setahun (n = 365)

```R
# Nomor 3.b Histogram kelahiran 6 bayi dalam setahun(n=365)

x = 6
n = 356
hist(rpois(n, lambda), main="Poisson Histogram", col="steelblue")
```

Hasil 

![image](https://user-images.githubusercontent.com/100200062/162611809-fcf9e91c-c286-4d05-b3a8-0d3a1eb8e227.png)


### 3.c 
dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
* Dari hasil penghitungan poin a, bisa didapatkan visualisasi dalam histogram yang ada pada poin b.

### 3.d 
Nilai Rataan (μ) dan Varian ( σ² ) dari Distribusi Poisson.

```R
# Nomor 3.d nilai rataan dan varian distribusi poisson 
# Rataan dan varians = lambda

lambda = 4.5
E = var = lambda 
E
var
```

Hasil 

![image](https://user-images.githubusercontent.com/100200062/162611843-854c2c39-bc58-491e-b913-279dd3ff7e98.png)



# Soal 4
**Deskripsi:** 
Diketahui nilai x = 2 dan v = 10. Tentukan:

### 4.a 
Fungsi Probabilitas dari Distribusi Chi-Square.

```R
# Nomor 4.a fungsi probabilitas dari distribusi Chi-Square

x = 2
v = 10 

dchisq(x,v)
```

Hasil 

![image](https://user-images.githubusercontent.com/100200062/162611880-f1c9983f-2055-470b-be38-a871a4a8c969.png)


### 4.b 
Histogram dari Distribusi Chi-Square dengan 100 data random.

```R 
# Nomor 4.b Histogram dari distribusi Chi-Square dengan 100 data random

n = 100
v = 10

hist(rchisq(n, v), main = "Chi-Square Histogram", col = "steelblue", xlab = "X", ylab = "V")
```

Hasil 

![image](https://user-images.githubusercontent.com/100200062/162611900-bbd19a23-f7be-4a1e-9a08-235ddb87221b.png)


### 4.c 
Nilai Rataan (μ) dan Varian ( σ² ) dari Distribusi Chi-Square.

```R 
# Nomor 4.c rataan dan variansi dari distribusi Chi-Square
# rataan E(x) = v
# varian Var(x) = 2v

v = 10
E = v
Var = 2 * v
```

Hasil 

![image](https://user-images.githubusercontent.com/100200062/162611961-79b3e05d-3098-40df-956a-b34d052a8289.png)


# Soal 5
**Deskripsi:**
Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan:

### 5.a
Fungsi Probabilitas dari Distribusi Exponensial

```R
# Nomor 5.a fungsi probabilitas dari distribusi eskponensial

lambda = 3 
dexp(lambda)
```

Hasil 

![image](https://user-images.githubusercontent.com/100200062/162612001-163a002f-729d-4b0d-b108-d2422cc05881.png)


### 5.b
Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random

```R
# Nomor 5.b Histogram dari distribusi eksponensial untuk 10, 100, 1000, dan 10000 bilangan random 

n = 10
hist(rexp(n),main = "Exponential Histogram", col = "steelblue", xlab = "X", ylab = "y")

n = 100
hist(rexp(n),main = "Exponential Histogram", col = "steelblue", xlab = "X", ylab = "y")

n = 1000
hist(rexp(n),main = "Exponential Histogram", col = "steelblue", xlab = "X", ylab = "y")

n = 10000
hist(rexp(n),main = "Exponential Histogram", col = "steelblue", xlab = "X", ylab = "y")
```

* n = 10

![image](https://user-images.githubusercontent.com/100200062/162612037-c2a08d72-992e-470f-8b34-cace9e3c3fac.png)

* n = 100

![image](https://user-images.githubusercontent.com/100200062/162612040-7b372ee8-b0a3-4453-a197-3fb68c79902c.png)

* n = 1000

![image](https://user-images.githubusercontent.com/100200062/162612044-74448e8f-ef0d-45e1-96d8-4f1c40507e4e.png)

* n = 10000

![image](https://user-images.githubusercontent.com/100200062/162612051-5dc210a6-f20c-48b7-a1bb-7b5f9bee646a.png)

### 5.c
Nilai Rataan (μ) dan Varian ( σ² ) dari Distribusi Exponensial untuk n = 100 dan λ = 3

```R
# Nomor 5.c nilai rataan dan varian distribusi eksponensial 
# untuk n = 100 dan lambda = 3

lambda = 3
n = 100 

set.seed(1)
E = mean(rexp(n, rate = lambda))
var = (sd(rexp(n, rate = lambda)))^2
E
var
```

Hasil 

![image](https://user-images.githubusercontent.com/100200062/162622002-9c188085-08e2-4d25-90dc-9ae241ef9512.png)



# Soal 6 
**Deskripsi:** 

Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan:

### 6.a 
Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot
data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
Keterangan :
X1 = Dibawah rata-rata
X2 = Diatas rata-rata

```R
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
```

Hasil 

![image](https://user-images.githubusercontent.com/100200062/162621278-bc2cb0b8-e654-4548-85b3-bff41a7ea2ec.png)


### 6.b
Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan:
NRP_Nama_Probstat_{Nama Kelas}_DNhistogram

```R
# Soal 6.b generate histogram dari distribusi normal 
# breaks 50
# menggunakan format nama NRP_Nama_Probstat{Nama Kelas}_DNhistogram 

breaks = 50 
hist(prob, breaks, main = "5025201088_Halyusa Ard Wahyudi_Probstat_D_DNhistogram",
     col = "steelblue")
```

Hasil 

![image](https://user-images.githubusercontent.com/100200062/162621299-6201bf70-e775-4a99-b6b1-ae1f612450af.png)


Diagramnya sebagai berikut: 

![image](https://user-images.githubusercontent.com/100200062/162621313-959b0e19-7502-4ad6-b352-0bd8c0ed1920.png)


### 6.c 
Nilai Varian ( ) dari hasil generate random nilai σ² Distribusi Normal.

```R
# Nomor 6.c varian dari hasil generate random nilai distribusi normal
# var = prob ^ 2

var = (sd(prob)) ^ 2
```

Hasil 

![image](https://user-images.githubusercontent.com/100200062/162621342-541b631a-b48f-4e0d-8730-81d04471c212.png)

## ----------------
Sekian Repo Praktikum Probstat Modul 1 2022 dari saya, terima kasih. 











