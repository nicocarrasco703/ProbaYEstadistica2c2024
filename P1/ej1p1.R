
n_sim <- 10000

tirada1 <- sample(1:6, n_sim, replace = TRUE)
tirada2 <- sample(1:6, n_sim, replace = TRUE)

evento_A <- (tirada1 + tirada2) >= 5
evento_B <- tirada1 > tirada2
evento_C <- tirada1 == 4

prob_A <- mean(evento_A)
prob_B <- mean(evento_B)
prob_C <- mean(evento_C)

cat("Probabilidad de Evento A (suma >= 5):", prob_A, "\n")
cat("Probabilidad de Evento B (primera > segunda):", prob_B, "\n")
cat("Probabilidad de Evento C (primera = 4):", prob_C, "\n")
