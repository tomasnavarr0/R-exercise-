datos2<-read.delim("clipboard", col.names=c("Falla"))
#ejercicio2 pag64

#Poblacion: envases con fallas
#n=50 muestra
#Variable: tipo principal de falla
#unidad elemental: cada envase con falla

#ctrl + shift+ flecha para abajo y se me seleccionan todos los valores de excel
#cambiar nombre de col.names(datos2)<-c("Falla") 
colnames(datos2)<-c("Falla") #si tengo varias <-c("Falla","Bananas","etc") 
#hacer tabla
tabla<-table(datos2)
tabla

#creamos un dataframe con la tabla
tabla2<-as.data.frame(table(datos2))
tabla2
#table siempre va a cuantificar la frecuencia, es como un count
sum(tabla2$Freq)
#cuando pongo en corchetes, le pido una columna
sum(tabla2[,2])
#index arranca en 1
#con class le pregunto q es este objeto
class(tabla2)
class(tabla2$Freq)
class(tabla2$Falla)

#agregar una columna nueva al data frame
tabla2$Prop<-tabla2$Freq/50 #le pongo en esa 3er columna la freq/la poblacion
tabla2$Prop<-(tabla2$Freq/sum(tabla2$Freq))*100

#borrar columna
tabla2$Prop<-NULL

barplot(tabla2$Freq, ylim=c(0,20),ylab="Frecuencia", xlab="Tipos de falla")
#averiguar como se pone las etiquetas de las barras (a,b,c,d,e)
