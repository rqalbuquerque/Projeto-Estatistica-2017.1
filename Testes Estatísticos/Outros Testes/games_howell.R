library("userfriendlyscience")


tconf <- data.frame(read.table("D:/UFPE/Mestrado/2017.1/Princípios e Técnicas da Análise Estatística Experimental - CIn/Projeto-Estatistica-2017.1/Base de dados/Projeto_Estatistica_accuracy.csv",header=TRUE,sep=";",dec="."))
tconf = melt(tconf)

library(dplyr)
mutate(tconf, variable = factor(variable, levels=unique(variable)))

### Order groups by median
tconf$variable = factor(tconf$variable, levels=c("conf7", "conf4", "conf5", "conf8", "conf6", "conf1", "conf3", "conf2"))

posthocTGH(value, variable, method="games-howell", conf.level = 0.95, digits=2, p.adjust="holm", formatPvalue = TRUE)