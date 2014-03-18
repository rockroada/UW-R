##load the package
library(ggplot2)
gDat  <- read.delim("gapminderDataFiveYear.txt")
str(gDat)
p <- ggplot(gDat, aes(x=gdpPercap, y = lifeExp))
p
p + geom_point()
p + geom_point()+scale_x_log10()
p <- p + scale_x_log10()
p+geom_point()
p+geom_point(aes(color= continent))
##trancperency
p+geom_point(alpha = 1/3)
p+geom_point(alpha = 1/3, size =3)+geom_smooth()


p+geom_point(alpha = 1/3, size =3) + geom_smooth(lwd = 3, se=FALSE)
ggplot(gDat, aes (x = continent, y =lifeExp))+geom_point()
ggplot(gDat, aes (x = continent, y =lifeExp))+geom_jitter()
ggplot(gDat, aes (x = continent, y =lifeExp))+geom_jitter()
ggplot(gDat, aes (x = continent, y =lifeExp))+geom_boxplot()
ggplot(gDat, aes (x =lifeExp, fill = continent))+geom_density()
ggplot(gDat, aes (x =lifeExp, fill = continent))+geom_density(alpha=0.2)
ggplot(gDat, aes (x =lifeExp, fill = continent))+geom_bar(width=0.05)
p+geom_point() + facet_wrap(~continent)
p+geom_point() + facet_wrap(~continent)
