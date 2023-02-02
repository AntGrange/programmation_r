# exercice 1

install.packages("questionr")
library(questionr)
data(hdv2003)
df <- hdv2003
dim(df)
names(df)


# exercice 2

min(df$heures.tv, na.rm = T)
max(df$heures.tv, na.rm = T)
mean(df$heures.tv, na.rm = T)
median(df$heures.tv, na.rm = T)
sd(df$heures.tv, na.rm = T)
summary(df$heures.tv)

hist(df$heures.tv, breaks = 10)


#exercice 3

table(df$trav.imp)
freq(df$trav.imp)

tab <- sort(x = table(x = df$trav.imp))
barplot(height = tab, col = "tomato")
