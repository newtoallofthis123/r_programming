library("ggplot2")

head(iris)

print(ggplot(iris, aes(x = Sepal.Length, y = Petal.Length)) +
    geom_point())
print(ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, col = Species)) +
    geom_point())
print(ggplot(iris, aes(x = Sepal.Length, y = Petal.Length)) +
    geom_line())
print(ggplot(iris, aes(x = Sepal.Length, y = Petal.Length)) +
    geom_boxplot())
print(ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, col = Species)) +
    geom_point()
    +
    geom_smooth())
