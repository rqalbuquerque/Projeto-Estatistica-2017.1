
tconf <- data.frame(read.table("D:/UFPE/Mestrado/2017.1/Princ�pios e T�cnicas da An�lise Estat�stica Experimental - CIn/Projeto-Estatistica-2017.1/Base de dados//Projeto_Estatistica_accuracy.csv",header=TRUE,sep=";",dec="."))

i = 0
j = 1

for(conf in tconf){
  i = i+1

    hist(conf , xlab="Accuracy", 
       ylab="Freqüência", 
       main=paste("Configuração",
       i, "da Rede Neural", sep=" "),
       col = "blue")
}

boxplot(tconf,main="Medidas de Configuração das Redes Neurais",xlab="Configurações",ylab="Accuracy",col="lightgreen",boxwex = 0.4)

