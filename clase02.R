setwd("C:/Users/tomas/OneDrive/Desktop/facultad/3er cuatrimestre/Probabilidad y Estadistica/Unidad 2/Practica")
install.packages("qcc")
library("qcc")
datos<-read.delim("clipboard",col.names=c("Etapa","Frecuencia"))
Frecuencia<-datos$Frecuencia
names(Frecuencia)<-c("Etapa1","Etapa2","Etapa3","Etapa4","Etapa5","Etapa6","Etapa7")
Frecuencia
pareto.chart(Frecuencia)
info<-pareto.chart(Frecuencia)
info
write.table(datos,"datosejercicio1.txt")
