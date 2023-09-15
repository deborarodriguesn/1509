## CORRELAÇÃO COM R ##
# Primeiro, vamos carregar as bibliotecas
library(corrplot)
library(dplyr)
library(ggplot2)

# Base de dados mtcars
data(mtcars)

# Selecionar um subconjunto de variáveis para evitar o erro
selected_vars <- mtcars[, c("mpg", "disp", "hp", "wt")]

# Tabela de correlação com as variáveis selecionadas
correlation_matrix <- cor(selected_vars)
print(correlation_matrix)

# Gráficos de dispersão pareados das variáveis selecionadas
pairs(selected_vars)

# Gráfico de correlação (corrplot) das variáveis
corrplot(correlation_matrix, method = "number", order = 'alphabet')
corrplot(correlation_matrix, order = 'alphabet')

