count<-table(mtcars$gear)
View(count)
plot(count)
barplot(count)

barplot(count, horiz=TRUE)

barplot(count, main="Sample bar plot",
        xlab = "Improvement",
        ylab = "Frequency",
        legend = rownames(count),
        col=c("red","yellow","green"))

pie(count)

dataset = read.csv("Marks.csv")
mark<-read.csv("Marks.csv")
View(mark)
library(ggplot2)

ggplot(mark,aes(x=SUBJECT,y=MARKS))+
  geom_point()

ggplot(mark,aes(x=SUBJECT,y=MARKS,))+
  geom_line()

ggplot(mark,aes(x=SUBJECT,y=MARKS))+
  geom_boxplot()
