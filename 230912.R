rm(list=ls())

3+8
4*5
(90+80+35)/3

9/2
9%%2 # 나머지

3^4 # 제곱
3**4 # 제곱

log10(10)

factorial(3)

sample(10) # 실행시킬 때마다 결과 다름

1:100

sin(pi/6) # pi를 사용해야 함

sample(1:100,5) # 1~100까지 중에서 5개 고른다

x = 3
y = 2
x + y
x = sample(1:45, 5)

x <- 7
x <- 3
c = x + y
print(c)
c

y <- 5
z <- "hello"
x + z # error
a <- 'hi' # "와 ' 똑같음

.x <- 10
.c <- 20

mid_score = 90
final_score <- 80

avg = (mid_score + final_score) / 2

score <- 1 # 대소문자를 구분함
Score <- 2
sCore <- 3

final_score = 100

rm(list=ls())

name <- "genie"
name + 90 # error

a <- TRUE
b <- FALSE

c <- T
d <- F

x = 100
x > 0

x <- sqrt(-3) # NaN

rm(list=ls())

a <- 1
b <- 2

a <- "abc"
b <- 5

class(a) # 자료형이 뭔지
class(b)

c <- T
class(c)

is.numeric(b)
is.character(b)

arr <- c(1,2,3,4,5)
arr
print(arr)

arr <- c(1,2,3,4,5,10,100)
arr

arr <- c(1,2,"hello")
arr

boo <- c(T,F,T,F,F,T,T)
boo

boo <- c("hi",F,T,F,F,T,T)
boo

rm(list=ls())

a <- c(1,2,3)
b <- c("a","b")
c <- c(a,b)
c

num_arr <- 1:100
num_arr

num_arr <- c(1:100)
num_arr

num_arr <- c(1,2,3,90:100)
num_arr

num_arr <- seq(from=0,to=100,by=2)
num_arr

num_arr <- seq(0,100,2)
num_arr

?seq

num_arr <- seq(5,100,3)
num_arr

num_arr <- seq(0,100,length.out=5) # length.out의 값만큼 균등하게 잘라줌
num_arr

rm(list=ls())

name = c("genie", "SH")
a <- rep(1,10) # 반복하고 싶은 것, 횟수

?rep

a <- rep(name, times=10)
a
a <- rep(name, each=10)
a

a <- rep(name, 10, length.out=5)
a

seq(from=0, to=100, length.out=5)
seq(from=-1, to=1, length.out=5)

a <- rep(name, each=10, length.out=50)
a

b <- rep(c(1,5), c(3,2)) # 1과 5를 3번, 2번 반복
b

rm(list=ls())

score <- c(100,90,80)
score[2]

names(score) <- c("genie", "SH", "L")
score

score[c(1,3)]

score["SH"]

score <- c("genie"=100,"SH"=90,"L"=80)
score

score[0] # 몇 번 째? 1부터 시작된다
score[1]
score[2]

ar <- seq(1,9,2)
ar
ar[c(1,3,5)]
ar[2:4]
ar[-1] # 첫 번째 빼고
ar[-2]
ar[-c(1,3,5)] # 1, 3, 5번째 빼고 출력해라

a <- 3
a <- 10

b <- c(1,2,3,4,5)
b

b[3] = 0
b

b[c(1,5)] <- c(100,99)
b

a <- c(1,9,2)
a
a*2

x <- c(9,4,100,0,88,23)
x
sum(x)
mean(x)
median(x)
sort(x) # 정렬 -> 기본 오름차순
?sort

sort(x, decreasing=T) # 내림차순
sort(x,T) # 내림차순
sort(x) # 오름차순

a <- 10
a > 5
b <- a > 5
b

c <- 10
c
a == c
a != c

b <- 1
## 주석
(a > b) | (a==b) ## | or
(a > b) & (a==b)

(a > b) & (a!=b)

d <- seq(1,9,2)
d
d>=5

d[d>=5] # TRUE만 알려준다

## d[F,F,T,T,T]
d[F,F,T,T,T]

d>5 # TRUE = 1 / FALSE = 0
sum(d>5) # TRUE만 더함

sum(d[d>5]) # TRUE를 만족하는 값을 더함

d <- c(1,3,5,7,9)
condi <- d > 1 & d < 5
condi
sum(condi)
d[condi]

a <- c(1:20)
a
a <- 1:20
a

a <- c(1:20,10)
a

v4 <- c(0.1, 1.0, 0.1)
v4

sin(pi/6)

d <- seq(1, 9, 2)
d
2*d
d
d-5
d

d <- c(100:200)
d[1:20]
d <- seq(100:119)

d <- c(100:200)
sum(d<110)
sum(d[d<110])

x <- c(1:20)
y <- x[seq(3,18,3)]
y
mean(x[-c(2:10)])

a <- c(1, 6, 3, 8)
a <- sort(a)
names(a) <- c("one", "three", "six", "eight")
a

ages <- c(58, 20, 85)
names <- c("Tony", "Ahn", "Nick")
x <- list(ages, names)
names(x) <- c("numberes", "names")
x

x <- c(1,6,8,11)
z <- list(x*2, x/2)
names(z) <- list("x*2", "x/2")
z

gender <- c(rep("male", 5), rep("female", 10))
#print(gender)
gender_fac <- factor(gender)
summary(gender_fac)
