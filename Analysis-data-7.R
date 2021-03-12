library(dplyr)
library(dslabs)
load("rda/Titanic.rda")
Titanic<-Titanic%>%ggplot(aes(Age,y=..count..,fill=Survived))+
  geom_density(alpha=0.2)+facet_grid(Sex~Pclass)
Titanic
ggsave("figs/density_plot1.png")
