dataset = read.csv("movies.csv")
movie<-read.csv("movies.csv")
View(movie)
library(ggplot2)

ggplot(movie,aes(x=name,y=Worldwide_Gross))+
  geom_point()

ggplot(movie,aes(x=name,y=Worldwide_Gross,))+
  geom_line()

ggplot(movie,aes(x=name,y=Worldwide_Gross))+
  geom_boxplot()
