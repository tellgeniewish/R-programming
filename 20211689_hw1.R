# 1번
#getwd()
#setwd('C:/Users/user/Desktop/J/DDWU/23-2/R프로그래밍')
df <- read.csv('airquality.csv')
#head(df)

air <- subset(df, 40 <= Ozone)
write.csv(air, 'ozone40.csv')

# 2-1번
name <- c("Olivia", "Sophia", "John", "Luna")
age <- c(18, 23, 22, 30)
gender <- c('F', 'F' ,'M' ,'F')
height <- c(162, 158, 160, 177)
student <- c(TRUE, FALSE, TRUE, FALSE)
People <- data.frame(name, age, gender, height, student)
#People
avg_age <- mean(People$age)
avg_height <- mean(People$height)
avg_age
avg_height

# 2-2번
num <- factor(People$gender)
#num
genderSummary <- summary(num)
genderSummary

# 3-1번
#View(swiss)
df <- subset(swiss, 80 <= Catholic & Agriculture)
df

# 3-2번
soldier <- subset(swiss, Examination < 20 & Agriculture < 50)
soldier[,c('Examination','Agriculture')]

# 4번
answer <- 25

while(TRUE) {
  input <- readline("숫자를 입력해주세요 : ")           
  number <- as.numeric(input)
  
  if (answer == number) {
    print("정답!")
    break
  } else if (answer < number) {
    print("down!")
  } else {
    print("up!")
  }
}