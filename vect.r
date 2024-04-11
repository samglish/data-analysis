set.seed(39)
bruit=rpois(lambda= 5,45)
bruit
bruit [4]
bruit [31:45]
bruit [c(3, 5, 9, 17, 38)]
bruit [bruit < 5]
bruitbis <- bruit
bruitbis[bruitbis < 5] = 0
bruitbis[bruitbis > 6] = 1
bruitbis
bruitbis <- bruit
bruitbis <- ifelse(bruitbis < 5 ,0,1)
bruitbis
length(bruit[bruit > 3])
set.seed(39)
bruit=rpois(lambda= 5,45)
bruit
length(bruit[bruit > 3])
resultat=(exp(4))+(sin(pi/4)/sqrt(14))
resultat