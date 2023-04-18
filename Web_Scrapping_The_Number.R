library(rvest)
library(dplyr)

link = "https://www.the-numbers.com/movie/budgets"
page = read_html(link)

name = page %>% html_nodes("table:nth-child(4) b a") %>% html_text()
year = page %>% html_nodes("table:nth-child(4) .data+ td a") %>% html_text()
Production_Budget = page %>% html_nodes("table:nth-child(4) .data:nth-child(4)") %>% html_text()
Worldwide_Gross = page %>% html_nodes("table:nth-child(4) .data:nth-child(6)") %>% html_text()

movies = data.frame(name, year, Production_Budget, Worldwide_Gross, stringsAsFactors = FALSE)
write.csv(movies, "movies.csv")
