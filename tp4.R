install.packages("gplots")
library(gplots)



# Exercice 1


set.seed(1789)
population <- rnorm(n = 10000000,mean = 171,sd = 9)


mean(population)
sd(population)
# tailles attendues retrouvées


hist(population, main="Distribution de la taille des Français", probability = TRUE)
# forme bien connue retrouvée


sum(population > 190)
# 1-pnorm(q = 190, mean = 171, sd = 9) ???


sum(population < 144)
# pnorm(q = 144, mean = 171, sd = 9) ???



# Exercice 2


echantillon <- sample(population, size = 100, replace = TRUE)
mean(echantillon)
sd(echantillon)
# valeurs assez proches de celles de la population


alpha1 <- sd(echantillon) / sqrt(100)
u1 = qt(p=0.05/2, df=100-1,lower.tail=F)
mean(echantillon) + u1 * alpha1 - (mean(echantillon) - u1 * alpha1)
borne_inf <- mean(echantillon) - u1 * alpha1
borne_sup <- mean(echantillon) + u1 * alpha1
c(borne_inf,borne_sup)


dataframe_temp <- data.frame(replicate(1000, sample(population, size = 100, replace = TRUE)))
t(dataframe_temp)
dataframe <- data.frame(sapply(dataframe_temp[ , ], mean))
colnames(dataframe) <- c("moyenne")
dataframe$ecart_type <- sapply(dataframe_temp[ , ], sd)


hist(dataframe$moyenne, main="Distribution des moyennes de taille des 1000 échantillons de 100 Français", probability = TRUE)
# forme connue retrouvée


mean(dataframe$moyenne)
sd(dataframe$moyenne)


sum(dataframe$moyenne > 172.8)
# 1-pnorm(q = 172.8, mean = 171, sd = 9) ???


alpha2 <- dataframe$ecart_type / sqrt(100)
u2 = qt(p=0.05/2, df=100-1,lower.tail=F)
dataframe$largeur_demi_intervalle <- mean(echantillon) + u2 * alpha2 - (mean(echantillon) - u2 * alpha2)
dataframe$borne_inf <- mean(echantillon) - u2 * alpha2
dataframe$borne_sup <- mean(echantillon) + u2 * alpha2


# plot(dataframe$moyenne, y, xlabel = ) ???
# graphique résultant du plotCI ci-dessous semble bizarre
plotCI(dataframe$moyenne, y = NULL, uiw = (dataframe$borne_sup - dataframe$moyenne), liw = (dataframe$moyenne - dataframe$borne_inf), err = "y")
