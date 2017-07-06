
tconf <- data.frame(read.table("C:/Users/Lincs/Desktop//Projeto_Estatistica_loss.csv",header=TRUE,sep=";",dec="."))

i = 0
j = 1

for(conf in tconf){
  i = i+1

    hist(conf , xlab="Loss", 
       ylab="Freqüência", 
       main=paste("Configuração",
       i, "da Rede Neural", sep=" "),
       col = "blue")
}

boxplot(tconf,main="Medidas de Configuração das Redes Neurais",xlab="Configurações",ylab="Loss",col="lightgreen",boxwex = 0.4)
