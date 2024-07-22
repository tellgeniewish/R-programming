rm(list=ls())

View(airquality)

x <- c(1,2,3,NA,5)

sum(x)
mean(x)

is.na(x)
sum(is.na(x))

sum(x, na.rm=T) # NA를 rm(삭제)하고 계산
                # 나누기 5(원래 개수)가 아니라 4가 됨
mean(x, na.rm=T)

x[is.na(x)] <- 0
x
sum(x)
mean(x)

x <- c(1,2,3,NA,5)
y <- na.omit(x)
y # 긴 설명이 뜬다
mean(y)
y <- as.vector(y)
y # x와 같은 형태로 뜬다

x <- c(1,2,3,NA,5)
y <- as.vector(na.omit(x))
y

View(airquality)

# 열 별로 결측값의 개수를 출력하는 방법 1: for문
for(i in 1:ncol(airquality)){
  x <- is.na(airquality[ , i])
  cat(colnames(airquality)[i], 't', sum(x), '\n')
}

# 열 별로 결측값의 개수를 출력하는 방법 2: apply 함수
cal_na <- function(x) {
  return(sum(is.na(x)))
}
apply(airquality, 2, cal_na)

a <- is.na(airquality)
View(a)
sum(a) # 총 결측값의 개수

rowSums(a) # 행 별로 결측값의 개수를 출력하는 방법1

sum(0<rowSums(a)) # 결측값이 포함된 행의 개수

complete.cases(airquality) # 행 별로 계산함

#####
#####
#####
agg <- aggregate(iris[,-5], by=list(iris$Species), FUN=mean)
View(agg)

agg <-   aggregate(mtcars, by=list(cyl=mtcars$cyl, vs=mtcars$vs), FUN=max)

x <- data.frame(name = c('a','b','c'), math = c(90,80,40))
ｙ　<-  data.frame(name = c('a','b','d'), korean = c(75,60,90))
，ｅｒｇｅ＝＝
