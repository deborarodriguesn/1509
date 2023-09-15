# Instalar e carregar as bibliotecas necessárias
install.packages("pacman")
library(pacman)
p_load(janitor, ade4, arules, forcats)

# Carregando o conjunto de dados do Facebook
facebook <- read.table(
  "https://raw.githubusercontent.com/hugoavmedeiros/ciencia_politica_com_r/master/bases_originais/dataset_Facebook.csv", 
  sep = ";", 
  header = TRUE
)

# Verificando a estrutura do conjunto de dados
str(facebook)

# Convertendo as colunas de 2 a 7 em fatores
for (i in 2:7) {
  facebook[, i] <- as.factor(facebook[, i])
}

# Verificando a estrutura novamente
facebook %>% str()

# Filtrando as colunas que são fatores
factorsFacebook <- unlist(lapply(facebook, is.factor))  
facebookFactor <- facebook[, factorsFacebook]
str(facebookFactor)

# One Hot Encoding
facebookDummy <- facebookFactor %>% acm.disjonctif()

# Discretização da variável Page.total.likes
inteirosFacebook <- unlist(lapply(facebook, is.integer))  
facebookInteiros <- facebook[, inteirosFacebook]
facebookInteiros %>% str()

facebookInteiros$Page.total.likes.Disc <- discretize(facebookInteiros$Page.total.likes, method = "interval", breaks = 3, labels = c("poucos", 'médio', 'muitos'))

facebookInteiros <- facebookInteiros %>% clean_names() # simplifica nomes usando janitor

# Verificando as colunas do conjunto de dados após a discretização
facebookInteiros %>% names()

# Transformação de fatores usando forcats
# Contagem dos fatores
fct_count(facebookFactor$Type)

# Anonimização dos fatores
fct_anon(facebookFactor$Type)

# Reclassificação dos fatores em mais comum, segundo mais comum e outros
facebookFactor$Type <- fct_lump(facebookFactor$Type, n = 2)

# Verificando a transformação dos fatores
fct_count(facebookFactor$Type)
