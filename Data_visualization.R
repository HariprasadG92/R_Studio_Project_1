Budget<-read.csv("movies.csv",stringsAsFactors = FALSE)
View(Budget)
str(Budget)

prop.table(table(Budget$Worldwide_Gross))

ggplot(Budget,aes(x=Worldwide_Gross))+
  geom_bar()

ggplot(Budget,aes(x=Worldwide_Gross))+
  theme_classic()+
  geom_bar()+
  labs(y="Movies count",
       title = "Number of Movie in Production_Budget list")

ggplot(Budget,aes(x=Production_Budget,fill=Worldwide_Gross))+
  theme_light()+
  geom_bar()+
  labs(y="Movies count",
       title = "Number of Movie in World wide gross list")
