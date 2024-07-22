rm(list=ls())

x <- c('winter', 'summer', 'fall', 'spring', 'fall', 'summer', 'spring', 'fall')

y <- table(x) # 도수분포표
y

y <- table(x) / length(x) # 상대 도수분포표
y

y <- table(x)
barplot(y)

barplot(y, main='선호하는 계절',
        xlab='계절', ylab='학생수',
        col='green')
# 맨 앞에 y 표를 지정하는 것 빼고는 순서 상관 없음

?barplot

# a,b,c알파벳 순서대로
z <- y[c(2,3,1,4)]
barplot(z)

pie(y) # y는 벡터 아님! 테이블로 감싸진 도수분포표
pie(y, main='선호하는 계절',
    radius=1.0, # radius는 몰라도 됨
    clockwise='False') # 시험x
?pie

x <- c(1,1,2,3,3,1,2,1,3,1,3,1,3,3,2,1,3,3,1,3,1,3)
y <- table(x)
y
barplot(y, main='favorite color')
yyy <- c('green', 'red', 'blue')

barplot(y, main='favorite color',
        col=yyy)

names(y) <- c('green', 'red', 'blue')

pie(y, main='favorite color',
    col=yyy)

weight <- c(10,11,13,14,12,10,11,13,12,15,14)
weight.heavy <- c(weight, 150)
mean(weight)
mean(weight.heavy) # 평균은 특이값에 민감하다

median(weight)
median(weight.heavy)

mean(weight, trim=0.1) # 절사평균 10%
mean(weight, 0.2) # 절사평균 20%

quantile(weight) # quantile(weight)의 50% 값 == median(weight)
median(weight)

quantile(weight, (0:10)/10)

summary(weight.heavy) # 4분위수를 구하는 두 번째 방법

mydata <-  c(60, 62, 64, 65, 68, 69, 120)
quantile(mydata)
quantile(mydata, (0:10)/10)
summary(mydata)

var(weight.heavy) # 분산
sd(weight.heavy) # 표준편차
range(weight.heavy) # 최소값, 최대값(결과값이 2개)
diff(range(weight.heavy)) # 최대값 - 최소값(차이)

hist(weight) # barplot과의 차이점: 막대 사이에 칸이 없다
hist(weight, main='어린이집 몸무게 분포',
     ylab='원아수',
     col='purple')

View(cars)
dist <- cars[ , 2]
dist
hist(dist, main='Histogram for 제동거리',
     xlab='제동거리', ylab='빈도수',
     border='red',
     col='pink',
     las=1, # las는 시험 x
     breaks=4) # 반드시 원하는데로 세팅되지는 않는다

boxplot(dist, main='xxx') # 이상치(outlier)를 판단한다
boxplot.stats(dist)$out

View(iris)

boxplot(iris$Petal.Length~iris$Species) # y~x
boxplot(Petal.Length~Species, data=iris)

### 여기까지가 단일변수 자료

View(mtcars)

plot(mtcars$wt, mtcars$mpg,
     main='중량-연비 그래프',
     xlab='중량', ylab='연비(MOG)',
     col='skyblue',
     pch=19) # 점의 모양을 바꾸는 용도! 시험 x

# 다음 4개는 같은 결과!
plot(mtcars$wt, mtcars$mpg)
plot(mtcars[ ,c('wt', 'mpg')])
plot(mtcars$mpg~mtcars$wt)
plot(mpg~wt,data=mtcars)

pairs(mtcars)

vars <- c('mpg', 'disp', 'drat', 'wt')
target <- mtcars[, vars]
View(target)
pairs(target, main='pairs 그림')

iris2 <- iris[, 3:4]
View(iris2)
point <- as.numeric(iris$Species) # 강제로 숫자로 만든다
point
colors <- c('red', 'green', 'blue')
plot(iris2, col=colors[point], # 중요!!! 포인트 벡터!
     pch=c(point))

plot(iris2)

beers <-  c(5, 2, 9, 8, 3, 7, 3, 5, 3, 5)
bal <-  c(0.1, 0.03, 0.19, 0.12, 0.04, 0.0095, 0.07, 0.06, 0.02, 0.05)

cor(beers, bal) # 상관관계 계수

x <- data.frame(beers, bal)
x

plot(beers, bal)
plot(bal~beers)

res <- lm(bal~beers) # 회귀식
res
abline(res) # 선을 그림

cor(beers, bal) # 상관관계 계수

cor(iris[ ,1:4]) # 자기 자신은 1

month <- 1:12
late <- c(5,8,7,9,4,6,12,13,8,6,6,4)
plot(month, late,
     main="지각생 통계",
     type='l', # line의 약자 # 시험 x
     lty=3, # 선의 종류 # 시험 x
     lwd=3, # 선의 굵기
     col='blue', 
     xlab='Month', ylab='지각횟수', 
     xlim=c(4,8))

late2 = c(4,6,5,8,7,8,10,11,6,5,7,3)
lines(month, late2, # 첫번째 plot위에 또 그리고 싶으면
      type='o',
      col='red')

#1
gender <-  c('F','F','F','M','M','F','F','F','M','M')
table(gender)

gender <- c(rep("M", 4), rep('F', 6))
table(gender)

gender <- c(rep("M", 3), rep('F', 6))
gender_fac <- factor(gender)
gender_fac[10] <- "M"
summary(gender_fac)

#2
gt <- table(gender)
barplot(gt, main='gender_var')

pie(gt, main='gender_pie')

#3
score <- c(90, 85, 73, 80, 85, 65, 78, 50, 68, 96)
mean(score)
median(score)
mean(score, 0.1)
sd(score)

#4
hist(score,
     main='score_his',
     xlab='성적', ylab='과목의 수',
     las=2,
     breaks=5)

boxplot(score,
        main='score_box')

#5
point <- as.numeric(iris$Species)
color <- c('red', 'green', 'blue')

plot(iris$Sepal.Width~iris$Sepal.Length,
     main='Iris_plot',
     col=color[point],
     pch=c(point))

#6
year <- c(20144, 20151, 20152, 20153, 20154, 20161, 20162, 20163, 20164, 20171, 20172, 20173)
men <- c(73.9, 73.1, 74.4, 74.2, 73.5, 73, 74.2, 74.5, 73.8, 73.1, 74.5, 74.2)
women <- c(51.4, 50.5, 52.4, 52.4, 51.9, 50.9, 52.6, 52.7, 52.2, 51.5, 53.2, 53.1)

plot(year, men,
     main='Economic Participation',
     xlab='year', ylab='percentage',
     col='blue',
     xlim=c(20145, 20170), ylim=c(50, 80),
     type='l',
     lty=1)

#7
lines(year, women,
      col='red')
