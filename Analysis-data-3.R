#Bar-plot of passenger's Survived Vs Sex
library(dplyr)
library(dslabs)
load("rda/Titanic.rda")
tab <- Titanic %>% count(Survived,Sex) %>% mutate(proportion = n/sum(n))
tab%>%ggplot(aes(Sex,proportion,fill=Survived))+geom_bar(stat = "identity",position = position_dodge())
ggsave("figs/Bar-plot.png")
