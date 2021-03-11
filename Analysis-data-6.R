library(dplyr)
library(dslabs)
load("rda/Titanic.rda")


Titanic<-Titanic%>%ggplot(aes(Pclass,fill=Survived)) + geom_bar()
Titanic
ggsave("figs/bar1-plot.png")



Titanic<-Titanic%>%ggplot(aes(Pclass,fill=Survived)) + geom_bar(position = "fill")
Titanic
ggsave("figs/bar2-plot.png")


Titanic<-Titanic%>%ggplot(aes(Survived,fill=Pclass)) + geom_bar(position = "fill")
Titanic
ggsave("figs/bar3-plot.png")
