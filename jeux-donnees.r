library(tidyverse)
data(diamonds)
dia <- diamonds
library(dplyr)
dia <- rename(dia, Poids = carat , Prix = price , Coupure = cut, Couleur = color , Clarte = clarity ,  Longueur = x , Largeur = y , Profondeur_mm = z, Profondeur_pourcentage = depth)
dia1 <- mutate(dia, Surface = Longueur * Largeur )
