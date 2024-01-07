df <- data.frame(
  hours = c(1, 2, 4, 5, 5, 6, 6, 7, 8, 10, 11, 11, 12, 12, 14),
  score =
    c(64, 66, 76, 73, 74, 81, 83, 82, 80, 88, 84, 82, 91, 93, 89)
)

print(head(df))
library(ggplot2)

print(ggplot(df, aes(x = hours, y = score)) +
        geom_point(size = 2))

linear_model <- lm(score ~ hours, df)

library("Metrics")
print(mse(df$score,predict(linear_model,df))) # Calculate MSE#mean squared error
print(rmse(df$score,predict(linear_model,df))) # Calculate MSE#root mean squared error
print(predict( linear_model, newdata = data.frame(hours=c(15,16,17)) ))
