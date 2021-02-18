#Make density plots of age grouped by Survival status.
library(dplyr)
library(dslabs)
load("rda/Titanic.rda")
Titanic<-Titanic%>%ggplot(aes(Age,y=..count..,group=Survived,fill=Survived))+
  geom_density(alpha=0.2)+facet_grid(Survived~.)
Titanic
ggsave("figs/density_plot2.png")
