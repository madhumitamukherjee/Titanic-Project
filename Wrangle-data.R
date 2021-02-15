library(tidyverse)
Titanic<-read_csv("data/Titanic.csv")
Titanic<-Titanic%>%mutate(Survived = factor(Survived),
                          Pclass = factor(Pclass),
                          Sex = factor(Sex))
save(Titanic,file="rda/Titanic.rda")
