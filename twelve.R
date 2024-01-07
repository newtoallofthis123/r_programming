df <- mtcars
# fit logistic regression model
model <- glm(vs ~ hp, data = mtcars, family = binomial)
# define new data frame that contains predictor variable
newdata <- data.frame(hp = seq(min(mtcars$hp), max(mtcars$hp), len = 500))
# use fitted model to predict values of vs
newdata$vs <- predict(model, newdata, type = "response")
print(newdata$vs)
# plot logistic regression curve
plot(vs ~ hp, data = mtcars, col = "#ff1010")
lines(vs ~ hp, newdata, lwd = 2)
