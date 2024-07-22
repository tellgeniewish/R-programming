rm(list = ls())

a = 1
cat('a의 값은', a, '입니다')
print('a의 값은', a, '입니다')

install.packages('svDialogs')
library(svDialogs)


a <- dlgInput('숫자 하나 입력해줘봐.')
# $res 있는게 깔끔함
a

a <- dlgInput('숫자 하나 입력해줘봐.')$res
# 문자로 받음

a + 1
is.nameric(a)
is.character(a)

a <- as.numeric(a)
as.numeric

getwd()
setwd("C:/Users/user/Desktop/J/DDWU/23-2/R프로그래밍") # \가 아니라 /로 고쳐야 함

install.packages('xlsx')
library(xlsx)

getwd()

data <- read.xlsx('airquality.xlsx', header=T)





a <- read.table('read_table.txt', fileEncoding = "CP949", header = T)
View(a)



sink('alex.txt', append=F)
print("hello")
sink()

a <- 1
b <- 3
cat(a+b, b-a, "언스전공생")

print('안녕하세요')
a <- 1; b <- 3
sink('dtsc.txt', append=T)
cat('저는', '\n’)
sink( ) 
cat('데이터 '\n')
sink('dtsc.txt', append=F)
cat(a+b, b-a, '언스전공생\n’)
sink( ) 
print('입니다.')