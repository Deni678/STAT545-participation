5+3
number<-10
num
# Vectors
times<-c(10,5,"NA")
mean(times)
#na.rm= removes "NA"s
mean(times, na.rm = TRUE)

mean(na.rm = TRUE, x = times)

range(times)
sqrt(times)
#subseting
times[times <30]
which(times<10)
times[which(times<10)]
times<- c(10,5,4,20,50)
times > 4 & times < 20
times < 20 | times > 10
sum(times < 10)
all(times < 10)

# Subset
times[3]
times[-3]
times[c(2,4)]
times[c(4,2)]
times[c(2:5)]


mtcars
head(mtcars)
tail(mtcars)
nrow(mtcars)
ncol(mtcars)
colnames(mtcars)[1]
mtcars$wt
colnames(mtcars)[which("wt") ]
# == is used for comparison ; = is used for assignment statements
mtcars[colnames(mtcars)=="wt"]
summary(mtcars)
which(colnames(mtcars)=="wt")
mtcars$cyl
mean(mtcars$mpg)

# Packages
install.packages("tibble")
library("tibble")
?tibble
browseVignettes(package = "tibble")
str(mtcars)
foo<-str(mtcars)
summary(mtcars)
foo<-summary(mtcars)
class(foo)
class(as.character(foo))
