
n_sim <- 10000

tirada1 <- sample(1:6, n_sim, replace = TRUE)
tirada2 <- sample(1:6, n_sim, replace = TRUE)

evento_A <- (tirada1 + tirada2) >= 5
evento_B <- tirada1 > tirada2
evento_C <- tirada1 == 4

evento_AyB <- evento_A & evento_B
evento_BoC <- evento_B | evento_C
evento_AyBoC <- evento_A & evento_BoC

prob_A <- mean(evento_A)
prob_B <- mean(evento_B)
prob_C <- mean(evento_C)
prob_AyB <- mean(evento_AyB)
prob_BoC <- mean(evento_BoC)
prob_AyBoC <- mean(evento_AyBoC)

cat("Probabilidad de Evento A (suma >= 5):", prob_A, "\n")
cat("Probabilidad de Evento B (primera > segunda):", prob_B, "\n")
cat("Probabilidad de Evento C (primera = 4):", prob_C, "\n")
cat("Probabilidad de Evento A y B:", prob_AyB, "\n")
cat("Probabilidad de Evento B o C:", prob_BoC, "\n")
cat("Probabilidad de Evento A y (B o C):", prob_AyBoC, "\n")