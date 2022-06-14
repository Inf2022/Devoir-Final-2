library(openxlsx)

## Importations des donnees 
p<-read.xlsx('croissance de la pop.xlsx')
as.numeric(p$Annee)
p

### faisons un graphe en nuage de points
library(ggplot2)
ggplot(data=p,aes(x=Annee,y=croispop))+
  geom_point()
  
### Faisons un graphe en ligne

ggplot(data=p,aes(x=Annee,y=croispop))+
  geom_line()

#### Faisons un graphe en baton

ggplot(data=p,aes(x=Annee,y=Annee))+
  geom_bar(stat="identity")