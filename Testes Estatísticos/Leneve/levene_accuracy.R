library(car)
library(reshape)

tconf <- data.frame(read.table("D:/UFPE/Mestrado/2017.1/Princípios e Técnicas da Análise Estatística Experimental - CIn/Projeto-Estatistica-2017.1/Base de dados/Projeto_Estatistica_accuracy.csv",header=TRUE,sep=";",dec="."))
tconf = melt(tconf)

leveneResult = leveneTest(value ~ variable, data = tconf)

Fstat = leveneResult[1,2]
df1 = leveneResult[1,1]
df2 = leveneResult[2,1]
conf = 0.95
critValue = qf(conf, df1, df2)

leveneResult
print(c("critical value",critValue))

if (Fstat > critValue){
  print("Variances are not statistical equal!!")
}else{
  print("Variances are statistical significantly equal!!")
}