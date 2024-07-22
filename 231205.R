rm(list=ls())

install.packages('treemap')
library(treemap)

data("GNI2014")
View(GNI2014)

head(GNI2014)

treemap(GNI2014,
        index=c('continent','iso3'),
        vSize='population',
        vColor='GNI',
        type='value',
        title = 'GNI')

#####
st <- data.frame(state.x77)
symbols(st$Illiteracy, st$Murder,
        circles = st$Population,
        inches = 0.3,
        fg = 'white',
        bg = 'lightgray',
        lwd = 1.5,
        xlab = 'rate of Illiteracy',
        ylab = 'crime(murder) rate',
        main = 'Illiteracy and Crime')
text(st$Illiteracy, st$Murder,
     rownames(st),
     cex = 0.6,
     col = 'brown')
#####
head(mtcars)
mosaicplot(~gear+vs, data = mtcars, color = TRUE,
           main = 'Gear and Vs')
mosaicplot(~gear+vs, data = mtcars, color = c('green', 'blue'),
           main = 'Gear and Vs')

#####
install.packages('ggplot2')
library(ggplot2)

month <- c(1, 2, 3, 4, 5, 6)
rain <- c(55, 50, 45, 50, 60, 70)
df <- data.frame(month, rain)
df

ggplot(df, aes(x=month, y=rain))+geom_bar(stat='identity', width = 0.7, fill = 'steelblue')

ggplot(df, aes(x=month, y=rain))+geom_bar(stat='identity', width = 0.7, fill = 'steelblue')+ggtitle('월별 강수량')+theme(plot.title = element_text(size=25, face='bold', colour = 'steelblue'))+labs(x='월', y='강수량')+ coord_flip( )

#####
ggplot(iris, aes(x = Petal.Length))+ geom_histogram(binwidth = 0.5)

ggplot(iris, aes(x = Sepal.Width, fill = Species, color = Species)) + geom_histogram(binwidth = 0.5, position = 'dodge') + theme(legend.position = 'top')
#####
ggplot(data=iris, aes(x=Petal.Length, y=Petal.Width)) + geom_point( )

ggplot(data=iris, aes(x=Petal.Length, y=Petal.Width,
                      color=Species)) + geom_point(size=3) + ggtitle('꽃잎의 길이와 폭') + theme(plot.title = element_text(size=25, face='bold', colour='steelblue'))
#####
ggplot(data=iris, aes(y=Petal.Length)) + geom_boxplot(fill='lightblue')

ggplot(data=iris, aes(y=Petal.Length, fill = Species)) +geom_boxplot()
#####
year <- 1937:1960
cnt <- as.vector(airmiles)
df <- data.frame(year, cnt)
head(df)

ggplot(data = df, aes(x = year, y = cnt)) + geom_line(col = 'red')
#####
#1
symbols(swiss$Fertility, swiss$Agriculture,
        circles = swiss$Education,
        bg = 'lightgreen',
        xlab = 'Fertility',
        ylab = 'Agriculture')
text(swiss$Fertility, swiss$Agriculture,
rownames(swiss),
col = 'darkblue')

#2
symbols(swiss$Fertility, swiss$Agriculture,
        circles = swiss$Education,
        bg = 'lightgreen',
        xlab = 'Fertility',
        ylab = 'Agriculture')
text(swiss$Fertility, swiss$Agriculture,
rownames(swiss),
col = 'darkblue')

#3
library(ggplot2)
ggplot(mtcars, aes(x = gear)) +
geom_bar() +
labs(x = '기어의 수', y = '빈도수')

#4
ggplot(data = mtcars, aes(x = mpg, y = wt,
                           color = gear)) + geom_point( size = 2)
