gdURL <- "http://tiny.cc/gapminder"
gDat  <- read.delim(gdURL)
gDat <- read.delim("gapminderDataFiveYear.txt")
str(gDat)
gDat
head(gDat)
tail(gDat)
names(gDat)
dim(gDat)
nrow(gDat)
ncol(gDat)
head(rownames(gDat))
length(gDat)
summary(gDat)
head(gDat)
gDat$lifeExp
summary(gDat$lifeExp)
hist(gDat$lifeExp)
class(gDat$country)
levels(gDat$country)
nlevels(gDat$country)
subset(gDat, subset = country =="Cambodia")
subset(gDat, subset = country %in% c("Cambodia", "Afghanistan"))
subset(gDat, subset = year == 1952, select = c(year, country))
lifeExp32  <- subset(gDat, subset = lifeExp <32)
nrow(lifeExp32)
lifeExp32$continent
summary(lifeExp32)
lifeExpShort   <- subset(gDat, lifeExp < 32 )
lifeExpShort
table(lifeExp32$continent)
plot(lifeExp~year, gDat)
plot(lifeExp~year, gDat, subset = country =="Rwanda")
lm(lifeExp~year, gDat, subset = country =="Rwanda")
mean(gDat$lifeExp)
with(gDat, mean(lifeExp))
with(subset(gDat, country =="Cambodia"), 
     cor(lifeExp, gdpPercap))
x <- 3*4
is.vector(x) 
length(x)
x[1]
x[2]
x[0]
x[5] <- 10
x
x <- 1:4
x^2
round(rnorm(3, mean = c(0, 100, 10000)), 2)
(y <- 1:3)
(z <- 3:7)
y+z
(y <- 1:5)
(z <- 1:10)
y+z
x <- c(1,4,9)
x <- c("cabbage", pi, 0.3, TRUE)
str(x)
x <- list("cabbage", pi, 0.3, TRUE)
str(x)
x <- -3:3
str(x)
x<0
set.seed(1)
(x  <- round(rnorm(8), 2))
names(x)  <- letters[seq_along(x)]
x
x[4]
x[c(3,5,8)]
x[-7]
x<0
x[x<0]
which(x<0)
x[2]
x[c(1,3)]
x[c(1,3,5,7)]
x[seq(length(x)) %% 2 == 0]
x[seq(2, length(x), by =2)]
x[c(FALSE, TRUE)]
x
month.abb
month.name
(x <- cbind(month.abb, month.name))
(x <- rbind(month.abb, month.name))
(x <- matrix(1:10, nrow = 5))
(x <- data.frame(month.num = 1:12, month.abb))
str(x)
x[2,2]
x <- cbind(month.abb, month.name)
y <- data.frame(mon.num = 1:12, x)
y
install.packages("ggplot2", dependencies = TRUE)
library(ggplot2)
