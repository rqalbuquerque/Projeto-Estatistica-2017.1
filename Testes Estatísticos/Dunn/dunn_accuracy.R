#install.packages("reshape")
#library(reshape)

#install.packages("dunn.test")
#install.packages("rcompanion")


tconf <- data.frame(read.table("D:/UFPE/Mestrado/2017.1/Princípios e Técnicas da Análise Estatística Experimental - CIn/Projeto-Estatistica-2017.1/Base de dados/Projeto_Estatistica_accuracy.csv",header=TRUE,sep=";",dec="."))
tconf = melt(tconf)

library(dplyr)
mutate(tconf, variable = factor(variable, levels=unique(variable)))

library(FSA)
Summarize(value ~ variable, data = tconf)

### Order groups by median
tconf$variable = factor(tconf$variable, levels=c("conf7", "conf4", "conf5", "conf8", "conf6", "conf1", "conf3", "conf2"))

### Dunn test
#library(FSA)
PT = dunnTest(value ~ variable, data=tconf, method="bh")

#library(dunn.test)
#attach(tconf)
#PT = dunn.test(value, variable, method="hs", list=TRUE, alpha=0.05)

PT

PT = PT$res

library(rcompanion)
cldList(comparison = PT$Comparison, p.value = PT$P.adj, threshold  = 0.05)
