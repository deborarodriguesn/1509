# Carregar bibliotecas nativas
library(dplyr)
library(ggplot2)

# Gráfico de Caixas Univariado
ggplot(data = iris, aes(y = Sepal.Length)) +
  geom_boxplot()

# Gráfico de Caixas Multivariado
ggplot(data = iris, aes(y = Sepal.Length, x = Species)) +
  geom_boxplot()

# Histograma
ggplot(data = iris, aes(x = Sepal.Length)) +
  geom_histogram()

# Densidade
ggplot(data = iris, aes(x = Sepal.Length)) +
  geom_density()

# Verifique se o arquivo 'orcamento_defesa_brasil.rds' existe no diretório correto
if (file.exists('bases_tratadas/orcamento_defesa_brasil.rds')) {
  # Leitura da base de dados
  defesaBrasilLong <- readRDS('bases_tratadas/orcamento_defesa_brasil.rds')
  
  # Séries Temporais
  defesaBrasilLong %>%
    group_by(Ano) %>%
    summarise(Valor = sum(Valor)) %>%
    ggplot(aes(x = Ano, y = Valor)) +
    geom_line()
  
  # Barras
  ggplot(data = defesaBrasilLong, aes(x = Ano, y = Valor)) +
    geom_bar(stat = "identity")
  
  # Dispersão
  ggplot(data = defesaBrasilLong, aes(x = Ano, y = Valor)) +
    geom_point()
} else {
  cat("O arquivo 'orcamento_defesa_brasil.rds' não foi encontrado no diretório.\n")
}
