# Carregar a base de dados USArrests
data("USArrests")

# Visualizar as primeiras linhas da base de dados
head(USArrests)

# Tabela de frequência absoluta da variável "UrbanPop" (Taxa de Urbanização)
table(USArrests$UrbanPop)

# Tabela de frequência relativa da variável "UrbanPop" (Taxa de Urbanização)
prop.table(table(USArrests$UrbanPop))

# Média da variável "Murder" (Taxa de Assassinato)
mean(USArrests$Murder)

# Mediana da variável "Murder" (Taxa de Assassinato)
median(USArrests$Murder)

# Separatrizes da variável "Murder" (Taxa de Assassinato)
quantile(USArrests$Murder, probs = c(0.25, 0.75))

# Desvio-padrão da variável "Murder" (Taxa de Assassinato)
sd(USArrests$Murder)

# Sumário descritivo básico das variáveis
summary(USArrests)

# Sumário descritivo completo das variáveis usando o pacote fBasics
library(fBasics)
basicStats(USArrests)
