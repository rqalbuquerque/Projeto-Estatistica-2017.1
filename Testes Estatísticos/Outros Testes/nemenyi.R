
tconf <- data.frame(read.table("D:/UFPE/Mestrado/2017.1/Princípios e Técnicas da Análise Estatística Experimental - CIn/Projeto-Estatistica-2017.1/Base de dados/Projeto_Estatistica_accuracy.csv",header=TRUE,sep=";",dec="."))
tconf = melt(tconf)

#library(dplyr)
mutate(tconf, variable = factor(variable, levels=unique(variable)))

#library(FSA)
Summarize(value ~ variable, data = tconf)

### Order groups by median
#tconf$variable = factor(tconf$variable, levels=c("conf7", "conf4", "conf5", "conf8", "conf6", "conf1", "conf3", "conf2"))

library(DescTools)
PT = NemenyiTest(x = tconf$value,g = tconf$variable,dist="tukey")

PT

library(rcompanion)
cldList(comparison = PT$Comparison, p.value = PT$P.adj, threshold  = 0.05)