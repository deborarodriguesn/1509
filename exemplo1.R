# Carregar o conjunto de dados "iris" que é nativo do RStudio
data(iris)

# Visualizar as primeiras linhas do conjunto de dados
head(iris)

# Gráfico de dispersão entre Sepal.Length e Sepal.Width
plot(iris$Sepal.Length, iris$Sepal.Width, main = "Scatter Plot Sepal.Length vs Sepal.Width",
     xlab = "Sepal.Length", ylab = "Sepal.Width", pch = 19)

# Calcular a correlação de Pearson entre Sepal.Length e Sepal.Width
correlacao_sepal <- cor(iris$Sepal.Length, iris$Sepal.Width, method = "pearson")
cat("Correlação de Pearson entre Sepal.Length e Sepal.Width:", correlacao_sepal, "\n")

# Gráfico de dispersão entre Sepal.Length e Petal.Length
plot(iris$Sepal.Length, iris$Petal.Length, main = "Scatter Plot Sepal.Length vs Petal.Length",
     xlab = "Sepal.Length", ylab = "Petal.Length", pch = 19)

# Calcular a correlação de Pearson entre Sepal.Length e Petal.Length
correlacao_petal <- cor(iris$Sepal.Length, iris$Petal.Length, method = "pearson")
cat("Correlação de Pearson entre Sepal.Length e Petal.Length:", correlacao_petal, "\n")

# Gráfico de dispersão entre Sepal.Length e Petal.Width
plot(iris$Sepal.Length, iris$Petal.Width, main = "Scatter Plot Sepal.Length vs Petal.Width",
     xlab = "Sepal.Length", ylab = "Petal.Width", pch = 19)

# Calcular a correlação de Pearson entre Sepal.Length e Petal.Width
correlacao_petal_width <- cor(iris$Sepal.Length, iris$Petal.Width, method = "pearson")
cat("Correlação de Pearson entre Sepal.Length e Petal.Width:", correlacao_petal_width, "\n")
