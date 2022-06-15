#Importation de donnees#

library(readxl)
Secteurprimaire <- read_excel("~/Informatique pour sciences sociales/DEVOIR FINAL2/Secteurprimaire.xlsx", 
                              col_types = c("date", "text", "numeric"))
View(Secteurprimaire)

library(tidyverse)
library(ggplot2)


#fortify#
fortify(model = NULL, Secteurprimaire)


#Graphique en ligne#
Secteurprimaire%>%
    ggplot(aes(x=Dates, y=Revenues, color=`Valeur ajoutée du secteur primaire`))+
    geom_line(size=1.5, alpha=0.6)+ labs(title = "Valeur ajoutée secteur primaire",
                    subtitle = "(en millions de gourdes de 2017-2021)",
                    x="Dates", y="Revenues", color="Valeur ajoutée du secteur primaire")

#Graphique en barre#
Secteurprimaire%>%
  ggplot(aes(x=Dates, y=Revenues,fill=Revenues, color =`Valeur ajoutée du secteur primaire`))+
  geom_bar(stat = "summary" , fun=mean, position_dodge())+ labs(title = "Valeur ajoutée secteur primaire",
                     subtitle = "(en millions de gourdes de 2017-2021)",
                     x="Dates", y="Revenues", color="Valeur ajoutée du secteur primaire")

#Graphique en nuage de point#
Secteurprimaire%>%
  ggplot(aes(x=Dates, y=Revenues, color=`Valeur ajoutée du secteur primaire`))+
  geom_point()+ labs(title = "Valeur ajoutée secteur primaire",
                                                subtitle = "(en millions de gourdes de 2017-2021)",
                                                x="Dates", y="Revenues", color="Valeur ajoutée du secteur primaire")


