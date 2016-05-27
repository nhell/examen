####parte A
datos<-read.table("/home/nhell/Documentos/datos_ipen.txt", sep="", header = TRUE)
x<-datos$x; #energia
y<-datos$y; #flujo
z<-datos$z; #error
y1<-y-z;
y2<-y+z;

plot(x,y ,xlim = c(0,11))


###parte B

e0=0.5;

dn<-sqrt(x)*exp(-x/e0);

plot(dn)
#x<-1/x
