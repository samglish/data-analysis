dia2  <- as.data.frame(dia1)
dia3 <- slice(dia2, 1:3500)
dim(dia3[dia3$Poids == 0.77 & dia3$Longueur > 5 & dia3$Largeur > 5 & dia3$Prix > 2500 ,])
filter(dia3, Poids == 0.77 & Largeur > 5 & Longueur > 5 & Prix > 2500 )
Data <- dia3[dia3$Couleur == "D" & dia3$Clarte == "VS1" & dia3$Coupure == "Ideal" ,]
Data <-  filter(dia3, Couleur == "D" & Clarte == "VS1" & Coupure == "Ideal" )
sub.coupure <- subset(dia3, Coupure == "Very Good")
mean(sub.coupure$Poids)
summary(dia3$Couleur)
tapply(dia3$Poids, dia3$Couleur, mean)
sub.couleur <- subset(dia3, Couleur == "E" | Couleur == "H" | Couleur == "I" | Couleur == "J")
table(sub.couleur$Couleur)
mean(sub.couleur$Poids)
sub.coup_clar <- subset(dia3, Clarte == "SI1" & ( Coupure == "Premium" | Coupure == "Fair"))
mean(sub.coup_clar$Surface)
dia3$Prix1 <- cut(dia3$Prix, 10)
table(dia3$Prix1)
dia3$Prix2 <- cut(dia3$Prix , breaks = c(326, 1000, 2500, 3500, 4000), include.lowest = T, labels = c("de 326 à 1000", "de 1000 à 2500", "de 2500 à 3500", "plus de 3500"))
table(dia3$Prix2)
library(questionr)
dia3$Prix3 <- quant.cut(dia3$Prix, 8)
table(dia3$Prix3)
summary(dia3$Coupure)
dia3$Coupure1[dia3$Coupure == "Good"] <- "Good"
dia3$Coupure1[dia3$Coupure == "Very Good"] <- "Good"
dia3$Coupure1[dia3$Coupure == "Fair"] <- "Fair"
dia3$Coupure1[dia3$Coupure == "Premium"] <- "Premium"
dia3$Coupure1[dia3$Coupure == "Ideal"] <- "Ideal"
table(dia3$Coupure1)
summary(dia3$Couleur)
dia3$Couleur1[dia3$Couleur == "I"] <- "I"
dia3$Couleur1[dia3$Couleur == "J"] <- "I"
dia3$Couleur1[dia3$Couleur == "D"] <- "D"
dia3$Couleur1[dia3$Couleur == "E"] <- "E"
dia3$Couleur1[dia3$Couleur == "F"] <- "F"
dia3$Couleur1[dia3$Couleur == "G"] <- "G"
dia3$Couleur1[dia3$Couleur == "H"] <- "H"
table(dia3$Couleur1)
dia3 <- dia3 %>% mutate(
table(dia3$Var)
Var = case_when(
    Coupure == "Premium" & Couleur == "I" & table > 60 ~ "Diamants de Coupure Premium de Couleur I et de table superieure à 60",
    Poids > 0.75 & Surface >= 20 & Surface <= 40 & Prix <= 3500 ~ "Diamants de poids superieur à 0,75 de surface comprise entre 20 et 40 et de prix inférieur ou egal a 3500",
    Coupure == "Ideal" & Clarte == "SI1" ~ "Diamants de coupure idéale et de clarte SI1",
    TRUE ~ "Autre"
)
)
dia3 <-dia3[order(dia3$Surface),]
arrange(dia3, Surface)
select(slice(dia3[order(dia3$Surface, decreasing = T),], 1:26), Couleur)
