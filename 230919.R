rm(list = ls())

a <- c(1,3,5)
length(a)
b <- 30:90
b[61]
length(b)

a <- list(1, "a", T)
a
a[3]
a[[3]]
a[[2]] # a를 출력하려면 이게 정답!
a[[1]]
a

b <- c(90,80,100)
b
names(b) <- c("math", "english", "korean")
b[2]
b["english"]

a
names(a) <- c('j', 'k', 'l')
a
# 깔끔
a[[1]]
a$j

a["j"]
a[1]

a <- list(j=1, k='a', l=T)
a
a[j] # error
# 깔끔
a[[1]]
a$j

a[1]
a["j"]

y <- list("datascience", "taewan", 40)
y
names(y) <- c("major", "name", "age")
y
y$age

y[[3]]

z <- list("major"="datascience", "name"="taewan", "age"=40)
z
z$age
# 시험 문제에 $가 있으면 이름이 지어진 리스트
# [[]]가 있으면 리스트지만 이름이 없는 리스트

b
x <- list(name="taewan", score=b) #리스트가 두 칸
x

x <- c("A", "B", "A", "AB", "O", "O")
y <- factor(x)
y
y[4]
y[7] <- "B"
y
y[8] <- "C" # factor를 만들었기 때문에 오류가 남
y # 결측값이 생김

summary(y) # 시험!!!!!
levels(y)

rm(list=ls())

d <- c(100:200)
d[50]

d
d[100:120]
d <- c(100:200:10)
d <- rep(100,120,10)
d
d[1:20]

length(d)
mean(d)
d<110
sum(d<110)
d[d<110]
sum(d[d<110])

d<110
sum(d[d<110])
sum(d<110)
mean(d)
d[d<110]
sum[d[d<110]]
sum[d[d<110]]
sum(d[d<110])

x <- c(1:20)
y <- x[seq(3,18,3)]
y

sort(y)
sort(y, decreasing=TRUE)
sort(y, decreasing="TRUE")
sort(y, TRUE)

mean(x[-(2:10)])
mean(x[-c(2:10)])

mean(x[seq[3,18,3]])
mean(x[seq(3,18,3)])

a <- c(1,6,3,8)
a
a <- c("one"=1,"three"=3,"six"=6,"eight"=8)
a
sort(a)
a
a <- sort(a)
a
names("one","three","six","eight")
names(a) <- c("one","three","six","eight")
a

ages <- c(58,20,85)
names <- c("tony","Ahn","Nick")
ages
names
x <- list(ages,names)
x

ages <- c(58,20,85)
names <- c("tony","Ahn","Nick")
x <- list(ages,names)
names(ages) <- c("tony","Ahn","Nick")
x
names(x) <- c("numbers", "names")
x

x <- c(1,6,8,11)
z <- x*2
z <- list(x*2,x/2)
z
names(z) <- c("x*2", "x/2")
z

names(z) <- c("x*2"=x*2, "x/2"=x/2)
z <- list("x*2"=x*2, "x/2"=x/2)
z

gender <- c(rep("male", 5), rep("female", 10))
gender

gender_fac <- factor(gender)
gender_fac
summary(gender_fac)

gender_fac[16] <- "male"
gender_fac

###
###

rm(list=ls())

?state.x77
x <- c(1,2,3)
x
View(state.x77)
View(iris)
?iris # 데이터 프레임의 대표적인 예시

# matrix(데이터, 행, 렬)
?matrix
x <- matrix(1:20, nrow=4, ncol=5)
x
View(x)
x <- matrix(1:20, nrow=4)
x

x[4,5]
x[20]
x[3]
x[7]

v <- 1:12
matrix(data=v, ncol=4)
mat <- matrix(data=v, ncol=4)
str(mat)

dim(mat)
nrow(mat) == dim(mat)[1] # 행의 개수
ncol(mat) == dim(mat)[2] # 열의 개수
length(mat) # 셀의 개수

y <- matrix(1:20, nrow=3 )
x <- matrix(data=1:20,4,5)
z <- matrix(1:18, 3)
z
View(z)

z <- matrix(1:18, ncol=3, byrow=T)
z
a <- matrix(1:20,2,byrow=T)
View(a)

b <- matrix(1:18, ncol=3, byrow=T)
View(b)

c <- matrix(0,3,4)
View(c)
c

d <- matrix("taewan", 2, 1)
d

x <- matrix(c(168.4, 174.6, 3,4,5,6,7,8), 4)

a <- matrix(1:20,4,5)
nrow(a) = dim(a)[1] # 행의 개수
ncol(a) = dim(a)[2] # 열의 개수
dim(a) # 행과 열 한 번에 알려준다
dim(a)[1]
length(a) # cell(칸)의 개수

x <- 1:3
y <- 4:6
z <- cbind(x,y)
z
a <- rbind(x,y)
a

cbind(1:3, 4:6, matrix(7:12,3,2))

rbind(matrix(1:6,2,3), matrix(7:12,2,3))

x <- matrix(1:20, 4, byrow=T)
x
x[3,4]
x[3]
x[3,]
x[,5]

x
x[,]
x[2,]
x[2,1:3]

a <- c(1,3)
a

x <- 1:3
y <- 4:6
m1 <- cbind(x, y)
m2 <- rbind(x, y)
m3 <- cbind(m1, x)
m4 <- rbind(m2, m3)
m4

m1
m5 <- cbind(m1, m1)
m5
m6 <- rbind(m1, m1)
m6
colnames(x) <- c("나이","몸무게","a","b","c")
x[,"몸무게"]
x[,2]
rownames(x)<- c("김태완","김태형","강충합","홍길동")
x["홍길동",]

rownames(x)
colnames(x)
x
x["김태형", "b"]
x[2,4]


#####
mat <- matrix(c(1,3,5,7,9,2,4,6,8,10,2,3,5,7,11), ncol=3)
mat
mat2 <- as.data.frame(mat)
mat2
#####
str(iris)
class(iris)

d <- matrix(seq(5,60,5), nrow = 3, ncol = 4)
d
d_t <- matrix(seq(5,60,5), nrow = 3, ncol = 4, byrow = T)
d_t
d_t <- t(d)
d_t

b1 <- c(4,5,7,2)
b2 <- c(19,15,12,17)
b3 <- c(20,24,28,23)
m1 <- matrix(c(b1,b2,b3), 4, 3)
m1

st <- data.frame(state.x77)
rich_state.x77 <- subset(st, "Income" >= 5000)
rich_state.x77

View(state.x77)
rich_state.x77 <- subset(state.x77, 5000<='Income')

state.x77   #r제공 데이터셋
rich_s = subset(data.frame(state.x77[ , c('Population','Income','Illiteracy','Life Exp')]), Income>=5000)
rich_s

x <- c(1:3)
x
y <- c("white", "blue", "yellow")
z <- c(TRUE, FALSE, TRUE)
df <- data.frame(x,y,z)
df

nrow(subset(airquality, Ozone > 120))

subset(airquality, Temp == max(airquality[ , "Temp"]))
