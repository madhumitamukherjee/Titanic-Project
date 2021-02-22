library(dplyr)
library(dslabs)
load("rda/Titanic.rda")
Titanic %>%filter(!Fare==0) %>% ggplot(aes(Survived,Fare,col=Survived))+
  geom_boxplot()+scale_y_continuous(trans ="log2")+geom_jitter(width=0.1,alpha=0.2)
Titanic
ggsave("figs/box_plot.png")

          