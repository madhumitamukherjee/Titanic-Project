#QQ-plot of passenger's Age traveling through Titanic
library(dplyr)
library(dslabs)
load("rda/Titanic.rda")
params <- Titanic %>%
  filter(!is.na(Age)) %>%
  summarize(mean = mean(Age), sd = sd(Age))
Titanic<-Titanic%>%ggplot(aes(sample=Age))+geom_qq(dparams=params)+geom_abline()
Titanic
ggsave("figs/QQ_plot.png")
