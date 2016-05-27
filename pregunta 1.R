####parte A
datos<-read.table("/home/nhell/Documentos/datos.txt", sep="", header = TRUE)
x<-datos$X
y<-datos$Y

sem<-sd(x)/sqrt(length(x))
c(mean(x)-2*sem,mean(x)+2*sem)

plot(x,y)  


####parte B
library(MASS)

z<-c(datos$Y)
fit1<-fitdistr(z,"weibull")
fit1
ks.test(z, "pweibull", scale=229.4462678, shape=2.2562642) ##valores apartir del test de kolmogorov-smirnov

fit2<-fitdistr(z,"gamma") 
fit2
ks.test(z,"pgamma",shape=3.143517387)
