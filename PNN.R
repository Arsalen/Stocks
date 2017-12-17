#PROBABILISTIC NEURAL NETWORK

############ Couche 1 ############
# Initiation
marge = seq(20, 30, 0.01)
r = 601
c = 20

m1 = matrix(sample(marge,r*c, replace=TRUE),r,c)
m2 = matrix(sample(marge,r*c, replace=TRUE),r,c)
m3 = matrix(sample(marge,r*c, replace=TRUE),r,c)
m4 = matrix(sample(marge,r*c, replace=TRUE),r,c)
m5 = matrix(sample(marge,r*c, replace=TRUE),r,c)
m6 = matrix(sample(marge,r*c, replace=TRUE),r,c)
m7 = matrix(sample(marge,r*c, replace=TRUE),r,c)
m8 = matrix(sample(marge,r*c, replace=TRUE),r,c)
m9 = matrix(sample(marge,r*c, replace=TRUE),r,c)
m10 = matrix(sample(marge,r*c, replace=TRUE),r,c)
m11 = matrix(sample(marge,r*c, replace=TRUE),r,c)
m12 = matrix(sample(marge,r*c, replace=TRUE),r,c)
m13 = matrix(sample(marge,r*c, replace=TRUE),r,c)
m14 = matrix(sample(marge,r*c, replace=TRUE),r,c)


# Normalization
for (i in 1:r) {
  max = max(m1[i,])
  min = min(m1[i,])
  for (j in 1:c) {
    m1[i,j] = (m1[i,j] - min) / (max - min)
  }
}

for (i in 1:r) {
  max = max(m2[i,])
  min = min(m2[i,])
  for (j in 1:c) {
    m2[i,j] = (m2[i,j] - min) / (max - min)
  }
}

for (i in 1:r) {
  max = max(m3[i,])
  min = min(m3[i,])
  for (j in 1:c) {
    m3[i,j] = (m3[i,j] - min) / (max - min)
  }
}

for (i in 1:r) {
  max = max(m4[i,])
  min = min(m4[i,])
  for (j in 1:c) {
    m4[i,j] = (m4[i,j] - min) / (max - min)
  }
}

for (i in 1:r) {
  max = max(m5[i,])
  min = min(m5[i,])
  for (j in 1:c) {
    m5[i,j] = (m5[i,j] - min) / (max - min)
  }
}

for (i in 1:r) {
  max = max(m6[i,])
  min = min(m6[i,])
  for (j in 1:c) {
    m6[i,j] = (m6[i,j] - min) / (max - min)
  }
}

for (i in 1:r) {
  max = max(m7[i,])
  min = min(m7[i,])
  for (j in 1:c) {
    m7[i,j] = (m7[i,j] - min) / (max - min)
  }
}

for (i in 1:r) {
  max = max(m8[i,])
  min = min(m8[i,])
  for (j in 1:c) {
    m8[i,j] = (m8[i,j] - min) / (max - min)
  }
}

for (i in 1:r) {
  max = max(m9[i,])
  min = min(m9[i,])
  for (j in 1:c) {
    m9[i,j] = (m9[i,j] - min) / (max - min)
  }
}

for (i in 1:r) {
  max = max(m10[i,])
  min = min(m10[i,])
  for (j in 1:c) {
    m10[i,j] = (m10[i,j] - min) / (max - min)
  }
}

for (i in 1:r) {
  max = max(m11[i,])
  min = min(m11[i,])
  for (j in 1:c) {
    m11[i,j] = (m11[i,j] - min) / (max - min)
  }
}

for (i in 1:r) {
  max = max(m12[i,])
  min = min(m12[i,])
  for (j in 1:c) {
    m12[i,j] = (m12[i,j] - min) / (max - min)
  }
}

for (i in 1:r) {
  max = max(m13[i,])
  min = min(m13[i,])
  for (j in 1:c) {
    m13[i,j] = (m13[i,j] - min) / (max - min)
  }
}

for (i in 1:r) {
  max = max(m14[i,])
  min = min(m14[i,])
  for (j in 1:c) {
    m14[i,j] = (m14[i,j] - min) / (max - min)
  }
}

# Covariance matrix

sigma1 = cov(m1)
sigma2 = cov(m2)
sigma3 = cov(m3)
sigma4 = cov(m4)
sigma5 = cov(m5)
sigma6 = cov(m6)
sigma7 = cov(m7)
sigma8 = cov(m8)
sigma9 = cov(m9)
sigma10 = cov(m10)
sigma11 = cov(m11)
sigma12 = cov(m12)
sigma13 = cov(m13)
sigma14 = cov(m14)

############ Couche 2 ############
x = sample(marge,20, replace=TRUE)
xmin = min(x)
xmax = max(x)

for (i in 1:c) {
  x[i] = (x[i] - xmin) / (xmax - xmin)
}

y1 = 1:r
y2 = 1:r
y3 = 1:r
y4 = 1:r
y5 = 1:r
y6 = 1:r
y7 = 1:r
y8 = 1:r
y9 = 1:r
y10 = 1:r
y11 = 1:r
y12 = 1:r
y13 = 1:r
y14 = 1:r

for (i in 1:r) {
  y1[i] = (1/(sqrt(2 * 3.14 * det(sigma1)))^20) * exp(-0.5 * ((x - m1[i,]) %*% sigma1 %*% (x - m1[i,])))
  y2[i] = (1/(sqrt(2 * 3.14 * det(sigma2)))^20) * exp(-0.5 * ((x - m2[i,]) %*% sigma2 %*% (x - m2[i,])))
  y3[i] = (1/(sqrt(2 * 3.14 * det(sigma3)))^20) * exp(-0.5 * ((x - m3[i,]) %*% sigma3 %*% (x - m3[i,])))
  y4[i] = (1/(sqrt(2 * 3.14 * det(sigma4)))^20) * exp(-0.5 * ((x - m4[i,]) %*% sigma4 %*% (x - m4[i,])))
  y5[i] = (1/(sqrt(2 * 3.14 * det(sigma5)))^20) * exp(-0.5 * ((x - m5[i,]) %*% sigma5 %*% (x - m5[i,])))
  y6[i] = (1/(sqrt(2 * 3.14 * det(sigma6)))^20) * exp(-0.5 * ((x - m6[i,]) %*% sigma6 %*% (x - m6[i,])))
  y7[i] = (1/(sqrt(2 * 3.14 * det(sigma7)))^20) * exp(-0.5 * ((x - m7[i,]) %*% sigma7 %*% (x - m7[i,])))
  y8[i] = (1/(sqrt(2 * 3.14 * det(sigma8)))^20) * exp(-0.5 * ((x - m8[i,]) %*% sigma8 %*% (x - m8[i,])))
  y9[i] = (1/(sqrt(2 * 3.14 * det(sigma9)))^20) * exp(-0.5 * ((x - m9[i,]) %*% sigma9 %*% (x - m9[i,])))
  y10[i] = (1/(sqrt(2 * 3.14 * det(sigma10)))^20) * exp(-0.5 * ((x - m10[i,]) %*% sigma10 %*% (x - m10[i,])))
  y11[i] = (1/(sqrt(2 * 3.14 * det(sigma11)))^20) * exp(-0.5 * ((x - m11[i,]) %*% sigma11 %*% (x - m11[i,])))
  y12[i] = (1/(sqrt(2 * 3.14 * det(sigma12)))^20) * exp(-0.5 * ((x - m12[i,]) %*% sigma12 %*% (x - m12[i,])))
  y13[i] = (1/(sqrt(2 * 3.14 * det(sigma13)))^20) * exp(-0.5 * ((x - m13[i,]) %*% sigma13 %*% (x - m13[i,])))
  y14[i] = (1/(sqrt(2 * 3.14 * det(sigma14)))^20) * exp(-0.5 * ((x - m14[i,]) %*% sigma14 %*% (x - m14[i,])))
}


############ Couche 3 ############
sum1 = sum(y1)
sum2 = sum(y2)
sum3 = sum(y3)
sum4 = sum(y4)
sum5 = sum(y5)
sum6 = sum(y6)
sum7 = sum(y7)
sum8 = sum(y8)
sum9 = sum(y9)
sum10 = sum(y10)
sum11 = sum(y11)
sum12 = sum(y12)
sum13 = sum(y13)
sum14 = sum(y14)



############ Couche 4 ############
maximum = max(c(sum1, sum2, sum3, sum4, sum5, sum6, sum7, sum8, sum9, sum10, sum11, sum12, sum13, sum14))

# Classification
compteur = 0
for (i in c(sum1, sum2, sum3, sum4, sum5, sum6, sum7, sum8, sum9, sum10, sum11, sum12, sum13, sum14)) {
  compteur = compteur + 1
  if(maximum == i){
    print(compteur)
  }
}
