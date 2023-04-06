datos<-read.delim("clipboard", col.names=c("Tiempo"))
tabla <- table(datos)

#La hacemos un dataframe para contar la frecuencia
tabla2<-as.data.frame(table(datos))

boxplot(datos$Tiempo, ylab="Frecuencia", xlab="Tiempo" ,main = "Boxplot de tiempo y frecuencia")

