#library(reshape)

tconf <- data.frame(read.table("D:/UFPE/Mestrado/2017.1/Princípios e Técnicas da Análise Estatística Experimental - CIn/Projeto-Estatistica-2017.1/Base de dados/Projeto_Estatistica_loss.csv",header=TRUE,sep=";",dec="."))


tconf = melt(tconf)

#library(dplyr)
tconf = mutate(tconf, variable = factor(variable, levels=unique(variable)))

result = kruskal.test(value ~ variable,data = tconf)

critValue = qchisq(.95, df=7)

critValue
result
