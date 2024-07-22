rm(list=ls())

a <- matrix(c(7,5,11,6,3,9),2) # 아무 옵션 없으면
View(a)

a <- matrix(c(7,11,3,5,6,9),2,3,byrow=T)

a <- rbind(c(7,11,3),c(5,6,9))

a <- cbind(c(7,5),c(11,6),c(3,9))

a[2,3]

colnames(a) <- c('a','b','c')
a[2,'c']

rownames(a) <- c("Tony","Jane")
a["Jane",'c']

str(a) #!!!!!!!!!!!!!!!!!!!!!!!!!!!!
class(a)

c <- as.data.frame(a)
class(c)

d <- as.matrix(b)
class(d)

city <- c("Seoul","Tokyo","Washington")
rank <- c(1,3,2)
a <- data.frame(city,rank)
View(a)

b <- data.frame(city = c("Seoul","Tokyo","Washington"), rank = c(1,3,2))
View(b)

v1 <- c("Seoul", "Tokyo", "Washington")
v2 <- c(1, 3, 2)
v3 <- c("KOR", "JPN", "USA")
city.info <- data.frame(city=v1, rank=v2, nation=v3)
str(city.info)
View(city.info)

b[,1]
b[, "city"]
b$city

city.info <- data.frame(v2, v1, v3) #!!!!!!!!!!!
View(city.info)

View(iris)
class(iris)
str(iris)

a <- iris[,c(1:2)]
View(a)
a

b <- iris[,c("Sepal.Length", "Species")]
View(b)

iris[17,"Petal.Width"]
iris[17,4]

iris[1:3,c(2,4)]

dim(a)[1]
dim(a)[2]

nrow(a)
ncol(b)

View(iris)
a <- head(iris)
View(a)
b <- tail(iris)
View(b)

unique(iris[,5])
table(iris[,5])

a <- matrix(c(7,5,11,6,3,9),2)
colSums(a)
rowSums(a)

colSums(iris) # 문자열이 있어서 안 됨
colSums(iris[,-5])
rowSums(iris[,-5])

a <- rbind(a,c(0,5,6))
colnames(a) <- c('x','y','z')
b <- subset(a, a[,2]>5) # 데이터, 조건
b

a[,2]>3
a
a[a[,2]>5,] # a의 2번째 열 중 5이상인 행만 출력

b <- subset(a, y>5) # error
b

a <- matrix(1:20,4)
colnames(a) <- c('x','y','z','p','q')
b <- subset(as.data.frame(a),z<10)
View(b)

x <- subset(iris, Sepal.Length>5) # " "하면 안 됨
View(x)

x <- subset(iris, Sepal.Length>5 & Sepal.Width > 4)
View(x)

is.matrix(iris)
is.data.frame(iris)

d <- matrix(seq(5,60,5),3)
d

d <- matrix(seq(5,60,5),3, byrow=T)
d

View(state.x77)

rich_state.x77 <- subset(as.data.frame(state.x77), Income>=5000)
View(rich_state.x77)


View(airquality)
airquality_m <- as.matrix(airquality)
class(airquality_m)

x <- subset(airquality, Ozone>120)
View(x)
nrow(x)
subset(airquality,Temp == max(airquality[,'Temp']))

airquality[,"Wind"]
airquality$Wind
