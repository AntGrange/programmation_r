<<<<<<< Updated upstream
brutToNet1 <- function(salbrutmens) {
  
  calcul <- salbrutmens-salbrutmens*(22/100)
  
  if (class(salbrutmens) != "numeric" & class(salbrutmens) != "integer") {
    print("ERROR : type not expected")
  }
  
=======
brutToNet1 <- function(brutmensuel) {
  
#vérifie s'il n'y a pas d'erreurs
  if (class(brutmensuel) != "numeric" & class(brutmensuel) != "integer") {
    print("ERROR : type not expected")
  }
  
  
  calcul <- brutmensuel-brutmensuel*(22/100)
  
>>>>>>> Stashed changes
  return (calcul) }



<<<<<<< Updated upstream
brutToNet2 <- function(salbrutmens, statut) {
  
  if (statut == "cadre") {
    calcul <- salbrutmens-salbrutmens*(25/100)-salbrutmens*(7.5/100)
  } else
  {
    if (statut == "non-cadre") {
      calcul <- salbrutmens-salbrutmens*(22/100)-salbrutmens*(7.5/100)
    }
  }
  if (class(statut) != "character") {
    print("ERROR : contract unknown")
  }
  
=======


brutToNet2 <- function(brutmensuel, statut) {
  
#vérifie s'il n'y a pas d'erreurs
  if (statut != "cadre" & statut != "non-cadre") {
    print("ERROR : contract unknown")
  }  
  if (class(brutmensuel) != "numeric" & class(brutmensuel) != "integer") {
    print("ERROR : type not expected")
  }
  
  
  if (statut == "cadre") {
    calcul <- brutmensuel-brutmensuel*(25/100)-brutmensuel*(7.5/100)
  } else
  {
    if (statut == "non-cadre") {
      calcul <- brutmensuel-brutmensuel*(22/100)-brutmensuel*(7.5/100)
    }
  }

>>>>>>> Stashed changes
  return (calcul) }



<<<<<<< Updated upstream
brutToNet3 <- function(salbrutmens, statut, tauxprlvmnt = 7.5, tempstrav = 100) {
  
  if (statut == "cadre") {
    calcul <- salbrutmens-salbrutmens*(25/100)-salbrutmens*(tauxprlvmnt/100)
  } else
  {
    if (statut == "non-cadre") {
      calcul <- salbrutmens-salbrutmens*(22/100)-salbrutmens*(tauxprlvmnt/100)
    }
  }
  if (tempstrav < 0 & tempstrav > 100) {
    print("ERROR : rate and time must be in range(0,100)")
  }
=======


brutToNet3 <- function(brutmensuel, statut, tauxprlvmnt, tempstrav) {
  
#vérifie s'il n'y a pas d'erreurs
  if (tempstrav < 0 | tempstrav > 100) {
    print("ERROR : rate and time must be in range(0,100)")
  }
  if (statut != "cadre" & statut != "non-cadre") {
    print("ERROR : contract unknown")
  }  
  if (class(brutmensuel) != "numeric" & class(brutmensuel) != "integer") {
    print("ERROR : type not expected")
  }
  
  
#fait le calcul même si le taux de prélèvement et le temps de travail n'existent pas
  
#cependant, je ne sais pas si la fonction missing est correcte
#je ne vois pas ce que je pourrais corriger pour faire en sorte que tempstrav soit égale à 100 par défaut
#(si je ne met rien lorsque je lance le programme, on me dit que tempstrav n'a pas de valeur "default")
  
#de plus, je ne suis pas sûr du calcul du salaire mensuel net selon le temps de travail (internet ne donne pas de formule précise)
  
  if (missing(tauxprlvmnt) | missing(tempstrav)) {
    tauxprlvmnt <- 7.5
    tempstrav <- 100
    if (statut == "cadre") {
      brutmens2 <- brutmensuel*(tempstrav/100)
      calcul <- brutmens2-brutmens2*(25/100)-brutmens2*(tauxprlvmnt/100)
    } else {
      if (statut == "non-cadre") {
        brutmens2 <- brutmensuel*(tempstrav/100)
        calcul <- brutmens2-brutmens2*(22/100)-brutmens2*(tauxprlvmnt/100)
      }
    }
  } else {
    if (statut == "cadre") {
      brutmens2 <- brutmensuel*(tempstrav/100)
      calcul <- brutmens2-brutmens2*(25/100)-brutmens2*(tauxprlvmnt/100)
    } else {
      if (statut == "non-cadre") {
        brutmens2 <- brutmensuel*(tempstrav/100)
        calcul <- brutmens2-brutmens2*(22/100)-brutmens2*(tauxprlvmnt/100)
      }
    }
  }
>>>>>>> Stashed changes
  
  return (calcul) }



<<<<<<< Updated upstream
brutToNet1(salbrutmens = 2917)

brutToNet2(salbrutmens = 2917, statut = "non-cadre")

brutToNet3(salbrutmens = 2917, statut = "non-cadre", tauxprlvmnt = 7.5, tempstrav = 100)
=======
brutToNet1(brutmensuel = 2917)

brutToNet2(brutmensuel = 2917, statut = "non-cadre")

brutToNet3(brutmensuel = 2917, statut = "non-cadre", tauxprlvmnt = 7.5, tempstrav = 100)
>>>>>>> Stashed changes
