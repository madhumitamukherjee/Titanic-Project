#Make density plots of age grouped by sex.
library(dplyr)
library(dslabs)
load("rda/Titanic.rda")
Titanic<-Titanic%>%ggplot(aes(Age,y=..count..,group=Sex,fill=Sex))+
  geom_density(alpha=0.2)+facet_grid(Sex~.)
Titanic
ggsave("figs/density_plot.png")


