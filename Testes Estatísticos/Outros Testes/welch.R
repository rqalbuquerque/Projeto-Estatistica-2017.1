library("onewaytests")

tconf <- data.frame(read.table("D:/UFPE/Mestrado/2017.1/Princípios e Técnicas da Análise Estatística Experimental - CIn/Projeto-Estatistica-2017.1/Base de dados/Projeto_Estatistica_accuracy.csv",header=TRUE,sep=";",dec="."))
tconf = melt(tconf)

result = welch.test(value ~ variable, data = tconf, alpha = 0.05)
