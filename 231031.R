rm(list=ls())

a <- matrix(1:12, 3)
a
apply(a, 1, sum) # 행 sum
apply(a, 1, mean) # 행 mean
apply(a, 1, max) # 행 max

apply(a, 2, max) # 열 max

apply(iris[,1:4], 2, max)

###

yaksu <- function(a){
  for(i in 1:a){
    if(a%%i==0){
      cat(i, end='')
    }
  }
}

yaksu(24)
yaksu(100)
yaksu(32)

taewan <- function(x=0,y=0){
  result <- x+y
  return(result)
}

taewan(2,4)
taewan(5) # error -> 매개변수 개수
#함수에서 초기값 주면 error 안 남

taewan2 <- function(a,b,c){
  cat(a,b,c)
}

taewan2(1,2,3)

mymax <-  function(x, y) {
  num.max <-  x
  if (y > x) {
    num.max <-  y
  }
  return(num.max)
}

mymax(1,10)

myfunc <-  function(x, y) {
  val.sum <-  x+y
  val.mul <-  x*y
  return(list(sum = val.sum, mul = val.mul)) # 2개 이상의 값을 반환하려면 list 사용
}

myfunc(3,4)[[1]]
a <- myfunc(3,4)
a$sum
a[[2]]

result <-  myfunc(5, 8)
s <-  result$sum
m <-  result$mul
cat('5+8=',s,'\n')
cat('5*8=',m,'\n')

###

a <- c(3,2,9,5,100,7,8)
which(a>4) # 위치(인덱스를 알려줌)
a[which(a>4)] # 위치의 값
sum(a[which(a>4)]) # 해당하는 값들의 합

max(a) # 가장 큰 값
which.max(a) # 몇 번째 인덱스에 가장 큰 수가 있는지
a[which.max(a)] # 가장 큰 값

score <-  c(76, 84, 69, 50, 95, 60, 82, 71, 88, 84)
idx <-  which(score<=60)
idx
score[idx]
score[idx] <-  61
score

idx <-  which(iris$Petal.Length>5.0)
idx

iris.big <- iris[idx, ]
iris.big

#####
#1
View(mtcars)
apply(mtcars, 2, sum)
apply(mtcars, 1, mean)
apply(mtcars, 2, max)

#2
tri <- function(width, height){
  z <- -1 # 초기값(잘못된 값이 들어왔을 때를 대비하여...)
  z <- (width^2 + height^2)^0.5 # 루트는 0.5승
  
  return(z)
}
tri(3,4)
tri(12,5)

#3
lgm <-  function(a, b){
  res <- 0
  for(i in 1:min(a,b)){
    if(a%%i==0 & b%%i==0){
      res = i
    }
  }
  
  return(res)
}
lgm(10,8)
lgm(10,20)
lgm(2,8)

#4
maxmin <- function(x){
  ma <- max(x)
  mi <- min(x)
  return(list(max=ma, min=mi))
}
v1 <-  c(7, 1, 2, 8, 9)
result <-  maxmin(v1)
result$max
result$min

#5
weight <-  c(69, 50, 55, 71, 89, 64, 59, 70, 71, 80)
which.max(weight)
which.min(weight)
which(61<=weight & weight<=69)

w <- which(weight<=60)
w
weight.2 <- weight[w]
weight.2

#6
ma <- which.max(iris$Petal.Length)
ma
iris_ma <- iris[ma,]
iris_ma
iris_ma <- iris[ma,1:4]
iris_ma

# 1번
# res를 출력한 결과를 보이시오.
arr1 <- rep(c(1, 3), 2)
arr2 <- matrix(c(2:9), 2)
arr <- rbind(arr1, arr2)
res <- apply(arr, 2, max)

# 2번
# 다음 프로그램은 calculator.R이다.
# squared를 s라는 이름으로,
# remain을 r라는 이름으로
# return하려고 한다. return문을 채우시오. 
myfunc <- function(a, b){
  squared <- a^2
  remain <- b%%2
  return(list(s=squared, r=remain))
}

# 다음 프로그램은 main.R이다.
# 빈칸을 채우고 sq와 rm의 값을 구하시오.
source("calculator.R")
result <- myfunc(8, 7)
sq <- result$s
rm <- result$r

# 3번
# 다음 mx와 mn의 값을 구하시오.
array1 <- seq(1,100,10)
mx <- which.max(array)
array2 <- matrix(array1, 2)
mn <- apply(array2, 2, mean)
