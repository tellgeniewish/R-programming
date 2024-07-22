rm(list=ls())

########## 1번 문제 ##########
repo <- function(string, k) {
  rep(string, k)
}

repo("computer",2)
repo("student",3)

########## 2번 문제 ##########
maxmin <- function(v) {
  max_value <- max(v)
  min_value <- min(v)
  
  result <- c(list(max = max_value, min = min_value))
  return(result)
}

v1 <- c(7,1,2,8,9)
result <- maxmin(v1)
result$max
result$min

result <- maxmin(iris[,1])
result$max
result$min

########## 3번 문제 ##########
#View(trees)

# 3-1
hist(trees$Girth)

# 3-2
boxplot(trees$Girth)

# 3-3
print(mean(trees$Height))
print(median(trees$Height))
print(mean(trees$Height, trim=0.15))
print(sd(trees$Height))

########## 4번 문제 ##########
#View(LifeCycleSavings)
lcs <-LifeCycleSavings

#boxplot(lcs$ddpi)
out_val <- boxplot.stats(lcs$ddpi)$out
#out_val

# 1번째 방법
lcs$ddpi[lcs$ddpi %in% out_val] <- NA
mean(lcs$ddpi, na.rm = TRUE)

# 2번째 방법
# lcs <-LifeCycleSavings
# out_val <- boxplot.stats(lcs$ddpi)$out
# lcs$ddpi[lcs$ddpi %in% out_val] <- NA
# after <- lcs$ddpi[complete.cases(lcs$ddpi)] #2
# mean(after)

# 3번째 방법
# lcs <-LifeCycleSavings
# out_val <- boxplot.stats(lcs$ddpi)$out
# lcs$ddpi[lcs$ddpi %in% out_val] <- NA
# after <- lcs[complete.cases(lcs$ddpi),'ddpi']#3
# mean(after)

# 4번째 방법
# lcs <-LifeCycleSavings
# out_val <- boxplot.stats(lcs$ddpi)$out
# lcs$ddpi[lcs$ddpi %in% out_val] <- NA
# after <- lcs$ddpi[complete.cases(lcs$ddpi)]
# mean(after)

# 5번째 방법
# lcs <-LifeCycleSavings
# out_val <- boxplot.stats(lcs$ddpi)$out
# lcs$ddpi[lcs$ddpi %in% out_val] <- NA
# after <- lcs[complete.cases(lcs),]
# mean(after$ddpi)

# 검산
# lcs <-LifeCycleSavings
# mean(lcs$ddpi) # [1] 3.7576
# print(sum(out_val)) #[1] 26.94
# sum(lcs$ddpi)#[1] 187.88
# account <- sum(lcs$ddpi) - sum(out_val)
# len <- length(lcs$ddpi)
# len <- len-2
# print(account) #[1] 160.94
# print(len) #48
# account/len #3.352917

########## 5번 문제 ##########
#View(mtcars)
ggplot(mtcars, aes(x=as.factor(cyl)))+geom_bar(fill="green")+labs(x='실린더수',y='빈도수')+ggtitle('실린더 수')
