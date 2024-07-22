rm(list=ls())

a <- 10

if (5<a) {
  cat(a, 'hi')
  print(a+1)
}else { # else를 반드시 같은 줄에 적어야 함
  print(a)
}

score <- 88

if(90<=score) { # 만족하는 첫 번째 조건문에서 탈출
  grade <- 'A'
} else if(80<=score) {
  grade <- "B"
} else if(70<=score) {
  grade <- "C"
} else{
  grade <- 'F'
}
grade

a <- 10
b <- 20
if (a>5 & b>5) { # and
  print(a+b)
}
if (a>5 | b>30) { # or
  print(a*b)
}

# 삼항 연산자
a <-10
b <- 20
c <- ifelse(a>b, a, b)
ifelse(a>b,c <- a,c <- b)
print(c)


for(i in 1:10) {
  print(i)
}

a <- c(3, -1, 5)
for (x in a) {
  print(x)
}
for (x in a) {
  cat(x, '\n')
}
for (x in a) {
  print('o')
}

for (i in 3:5) {
  print('x')
  print(i)
}

# 구구단
for(i in 1:9) {
  cat('2 *', i, '=', 2*i, '\n')
}

# 짝수만
for(i in 1:10){
  if(i%%2==0){
    print(i)
  }
}

sum <- 0
for(i in 1:100) {
  sum <- sum + i # sum에 i 값을 누적
}
print(sum)

View(iris)
len = nrow(iris)
myLabel <- c()

for (i in 1:len) {
  if(iris$Petal.Length[i]<=1.6) {
    myLabel[i] <-  'L'
  } else if(5.1 <= iris$Petal.Length[i]) {
    myLabel[i] <- 'H'
  }else {
    myLabel[i] <- 'M'
  }
}
print(myLabel)
length(myLabel)

a <- data.frame(iris$Petal.Length, myLabel)

for(i in 1:5) {
  print(i)
}

i <- 1
while(i<=5){
  print(i)
  i <- i+1
}

sum <- 0
i <- 1
while(i<=10){
  i <- i+1
  sum <- sum+i
}
sum

for(i in 3:9) {
  print(i)
  if (6<i)
    break
}

for (i in 1:10) {
  if(i%%2==1){
    next
  }
  print(i)
}

i <- 1
while(i<=10){
  if(i%%2==1){
    i <- i+1
    next
  }
  print(i)
  i <- i+1
}

# 1
for (i in 1:100){
  if(i%%3==0){
    print(i)
  }
}

# 2
for (i in 1:24){
  if(24%%i==0){
    print(i)
  }
}

# 3
num <- 0
sum <- 0
for (i in 1:100){
  if(i%%3==0){
    num <- num + 1
    sum <- sum+i
  }
}
cat(num, sum)

# 4
i <- 1
k <- 1
while (i <= 5){
  k <- k*i
  i <- i+1
}
print(k)

# 5
i <- 1
while (i <= 9){
  cat(i, 'x 7 =', i * 7, '\n')
  i <- i+1
}

# 6
i <- 1
while (i <= 100){
  if (i%%4==0){
    print('*')
  }else{
    print(i)
  }
  i <- i+1
}

# 7
n <- nrow(airquality)
m <- 0
for(i in 1:n) {
  if (90<= airquality$Temp[i]) {
    cat(airquality$Month[i], airquality$Day[i], '\n')
    m <- m+1
  }
}
print(m)

##########
v9 <- rep(c(1, 5), length.out=5)
v9

v10 <- rep(c(1, 5), times=c(3, 2))
v10

v9 <- rep(c(1, 5))
v9
v9[1]
v9[2]
v9[3]

d <- seq(1, 10, 1)
range(d)

d <- seq(1, 9, 2)
condi <- d>1 & d<=5
d[condi]

x <- list("datascience","tony", 96, TRUE)
x
y <- list(major="datascience",name="tony", score=96, check=TRUE)
y
y$major <- 'ds'
y
