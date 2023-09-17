### CARREGAR PACOTES
pacman::p_load(ccaPP, lsa, minerva, Rfast)

##Instalar base de dados nativas
install.packages("dados")

## CARREGAR BASE DE DADOS
library(dados)
dados::pixar_filmes

multi.cor <- function(filme, duracao) {
  c(
    cor = cor(filme, duracao), # Correlação
    dcor = dcor(filme, duracao), # Distance correlation
    cosine = cosine(filme, duracao), # Distância do Cosseno 
    maxCor = maxCorProj(filme, duracao), # Maximal correlation
    MIC = mine(filme, duracao)$MIC # Maximal Information Coefficient
  )
}

### EXEMPLO 1 LINEAR
x <- runif(1000, 0, 10)
y <- 5 - 1.7*x

plot(x, y) # Plotar o gráfico

corList <- multi.cor(x, y)
names(corList)
corList <- corList[c("cor", "MIC", "cosine", "maxCor", "dcor")]
corList

