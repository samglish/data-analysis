# data-analytics
Analyse des données de référence avec le langage R. Maîtrise statistique de l'analyse des données, y compris la visualisation des données de base, les tests statistiques et l'inférence, ainsi que la modélisation linéaire

# Installer R
cliquez sur le lien pour l'installer
https://cran.r-project.org/bin/windows/base/

# Installer rstudio
cliquez sur le lien pour l'installer
http://www.rstudio.com/products/rstudio/download/

apres l'installation, veuillez ajouter le package rmarkdown
 
install.packages("rmarkdown", dep = TRUE)

# fichier vecteurs
Dans ce fichier vous apprendrez a manipuler les vecteurs, utiliser la loi de poisson de parametre 5, trouver des solutions avec la fonction _ifelse()_, utiliser de la fonction _set.seed()_ et enfin calculer des expressions mathematiques(sin, cos, racine etc.)
# fichier jeux-de-donnees
Ici vous  verrez comment manipuler les jeux de donnees _diamonds_ du package _tidyverse_ et les mettre dans un objet, renommer les variables, creer une base de donnees et les dataframe etc.
# fichier statistic
Calculer la moyenne, l'ecart type, l'amplitude, decouper des effectifs, regrouper les modalités, Vérifier avec des tris croisés, la creation d'une variable, Ordonner le tableau de données selon la surface croissante, diagrammes etc.


# Dependances
-> library(questionr)
-> library(dplyr)
-> library(tidyverse)
## TP SUR LES VECTEURS
Nous allons le presenter sous forme de TP

### 1  Creer d'un vecteur, après avoir fixé la grane de générateur à 39 créer un vecteur à 45 éléments, nommé _bruit composé de nombres aléatoires extraits d'une loi de Poisson de paramètre 5.

```r
set.seed(39)
bruit=rpois(lambda= 5,45)
bruit
```


### 2. Afficher la valeur du quatrième élément

```r
bruit [4]

```


### 3. Afficher les valeurs des 15 derniers éléments

```r
bruit [31:45]

```

### 4. Afficher les valeurs des éléments 3,5,9,17 et 38

```r
bruit [c(3, 5, 9, 17, 38)]

```

### 5. Afficher les valeurs inférieures à 5

```r
bruit [bruit < 5]
```

### 6 Créer un nouveau vecteur bruitbis qui est une copie du vecteur bruit

```r

bruitbis <- bruit

bruitbis[bruitbis < 5] = 0
bruitbis[bruitbis > 6] = 1

bruitbis

```


### 7. Proposer une autre solution à la question précédente à l'aide de la fonction _ifelse()_

```r
bruitbis <- bruit
bruitbis <- ifelse(bruitbis < 5 ,0,1)
bruitbis

```
### 8. Combien d'éléments de bruits sont supérieurs à 3

```r
length(bruit[bruit > 3])

set.seed(39)
bruit=rpois(lambda= 5,45)
bruit

length(bruit[bruit > 3])
```

# Justification:Oui car le nombre d'elements superieurs a trois obtenu est égale, vue que nous avons fait usage de la fonction set.seed()

### 9. Calculer avec R l'expression (exp(4))+(sin(pi/4)/sqrt(14))

```r
resultat=(exp(4))+(sin(pi/4)/sqrt(14))

resultat
```

## MANIPULATION DES JEUX DE DONNEES

### 1.Charger le jeu de données diamonds du package tidyverse (fichier vecteurs) puis la mettre dans l'objet dia.

```r
library(tidyverse)
data(diamonds)
dia <- diamonds

```
### 2. Renommer les variables suivantes: carat en Poids, price en Prix, cut en Coupure , color en Couleur , clarity en Clarté, x en longueur, y en largeur, z en porfondeur mm depth en Profondeur pourcentage Pour renommer les variables, nous allons utiliser la librairie dplyr

```r
library(dplyr)
dia <- rename(dia, Poids = carat , Prix = price , Coupure = cut, Couleur = color , Clarte = clarity ,  Longueur = x , Largeur = y , Profondeur_mm = z, Profondeur_pourcentage = depth)

```

### 3. Créer une nouvelle base de données dia1 contenant la variable Surface égale au produit de la longueur et de la largeur

```r
dia1 <- mutate(dia, Surface = Longueur * Largeur )
```
------------------------------------------------------------
@samglish, le 11 mars 2024 (BEIDI DINA SAMUEL)
email:beidisamuel11@gmail.com
------------------------------------------------------------
