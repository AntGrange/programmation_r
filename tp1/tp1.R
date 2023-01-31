brutToNet1 <- function(salbrutmens) {
  
  calcul <- salbrutmens-salbrutmens*(22/100)
  
  if (class(salbrutmens) != "numeric" & class(salbrutmens) != "integer") {
    print("ERROR : type not expected")
  }
  
  return (calcul) }



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
  
  return (calcul) }



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
  
  return (calcul) }



brutToNet1(salbrutmens = 2917)

brutToNet2(salbrutmens = 2917, statut = "non-cadre")

brutToNet3(salbrutmens = 2917, statut = "non-cadre", tauxprlvmnt = 7.5, tempstrav = 100)
