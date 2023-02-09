# EXERCICE 1

install.packages("readxl")
library(readxl)
Pokedex <- read_excel(path  = "L:/DUT/STID/Promo 2022/agrange/INFORMATIQUE STATISTIQUE R/pokemon.xlsx", sheet = "pokemon")


nrow(Pokedex)
ncol(Pokedex)

colnames(Pokedex)

str(Pokedex)

Pokedex$generation <- as.factor(Pokedex$generation)
Pokedex$is_legendary <- as.factor(Pokedex$is_legendary)
Pokedex$type <- as.factor(Pokedex$type)

levels(Pokedex$generation)
levels(Pokedex$is_legendary)
levels(Pokedex$type)

summary(Pokedex)



# EXERCICE 2

mean(Pokedex$weight_kg, na.rm = T)

median(Pokedex$weight_kg, na.rm = T)

quantile(Pokedex$height_m, na.rm = T)

quantile(Pokedex$height_m, seq(0, 1, 0.1), na.rm = T)

var(Pokedex$height_m, na.rm = T)
sd(Pokedex$height_m, na.rm = T)

      # tri à plat, trié par ordre
sort(table(Pokedex$generation), decreasing = TRUE)
sort(table(Pokedex$is_legendary), decreasing = TRUE)
sort(table(Pokedex$type), decreasing = TRUE)



# EXERCICE 3

requete_3a <- Pokedex[, c("nom", "is_legendary")]
dim(requete_3a)

requete_3b <- Pokedex[1:50,1:2]
dim(requete_3b)

requete_3c <- Pokedex[1:10,]
dim(requete_3c)

requete_3d <- Pokedex[,-ncol(Pokedex)]
dim(requete_3d)

requete_3e <- head(Pokedex[order(Pokedex$nom), ], 1)
dim(requete_3e)

requete_3f <- head(Pokedex[order(Pokedex$weight_kg, decreasing = TRUE), ], 1)
dim(requete_3f)

requete_3g <- head(Pokedex[order(-Pokedex$attack, Pokedex$speed), ], 10)
dim(requete_3g)



# EXERCICE 4

temporaire_4a <- Pokedex[Pokedex$attack >= 150, ]
requete_4a <- temporaire_4a[order(temporaire_4a$attack, decreasing = TRUE), ]
dim(requete_4a)

requete_4b <- Pokedex[Pokedex$type %in% c("dragon","ghost","psychic","dark"), ]
dim(requete_4b)

temporaire_4c <- Pokedex[(Pokedex$type == "fire") & (Pokedex$attack > 100), ]
requete_4c <- temporaire_4c[order(temporaire_4c$attack, decreasing = TRUE), ]
dim(requete_4c)

temporaire_4d <- Pokedex[(Pokedex$speed >= 100) & (Pokedex$speed <= 150), ]
requete_4d <- temporaire_4d[order(temporaire_4d$speed, decreasing = TRUE), ]
dim(requete_4d)

requete_4e <- Pokedex[is.na(Pokedex$height_m), ]
dim(requete_4e)

requete_4f <- Pokedex[(!is.na(Pokedex$height_m)) & (!is.na(Pokedex$weight_kg)), ]
dim(requete_4f)

requete_4g <- Pokedex[(Pokedex$weight_kg > 250) & (!is.na(Pokedex$weight_kg)), ]
print(requete_4g)
dim(requete_4g)