# Carregar os pacotes necessários
library(data.table)
library(ggplot2)

# Carregar a base de dados de câncer de mama
breast_cancer <- fread('https://raw.githubusercontent.com/hugoavmedeiros/cp_com_r/master/bases_tratadas/breast_cancer.csv', stringsAsFactors = TRUE)

# Tabela de contingência entre as variáveis "grauparto" e "nodoslinfaticos"
contingency_table <- table(breast_cancer$grauparto, breast_cancer$nodoslinfaticos)
contingency_table

# Gráfico de barras empilhadas para visualizar a associação
ggplot(data = breast_cancer, aes(x = grauparto, fill = as.factor(nodoslinfaticos))) +
  geom_bar(position = "fill") +
  labs(title = "Associação entre Grau de Parto e Número de Linfonodos Positivos",
       fill = "Número de Linfonodos Positivos") +
  theme_minimal()

# Teste Qui-Quadrado
chi_square_test <- chisq.test(contingency_table)
chi_square_test

# Visualizar as frequências observadas e esperadas
observed <- chi_square_test$observed
expected <- chi_square_test$expected
observed
expected
