# Criar um exemplo de tabela de contingência (dados categóricos)
# Associação entre gênero e preferência por esportes
genero <- c("Masculino", "Feminino", "Masculino", "Feminino", "Masculino")
esporte <- c("Futebol", "Futebol", "Basquete", "Basquete", "Futebol")

# Criar uma tabela de contingência
tabela_contingencia <- table(genero, esporte)

# Realizar o teste qui-quadrado
resultado_chi2 <- chisq.test(tabela_contingencia)

# Exibir o resultado
print(resultado_chi2)
