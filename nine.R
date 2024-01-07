Dataset = mtcars
View(Dataset)
Dataset$Age=ifelse(is.na(Dataset$Age),ave(Dataset$Age, FUN = function (x)mean(x, na.rm =
TRUE)), Dataset$Age)
View(Dataset)
Dataset$Salary = ifelse(is.na(Dataset$Salary),
ave(Dataset$Salary, FUN = function (x)mean(x, na.rm = TRUE)),
Dataset$Salary)
View(Dataset)
Dataset$Country = factor(Dataset$Country,
levels = c('France','Spain','Germany'),
labels = c(1.0, 2.0 , 3.0 ))
Dataset$Purchased = factor(Dataset$Purchased,
levels = c('No', 'Yes'),
labels = c(0, 1))
Dataset$Purchased[is.na(Dataset$Purchased)] <- 0
#as.factor(Dataset$Purchased)
library(caTools)# required library for data splition
set.seed(300)
split = sample.split(Dataset$Purchased, SplitRatio = 0.8)# returns true if observation goes to the

training_set = subset(Dataset, split == TRUE)
test_set = subset(Dataset, split == FALSE)
print(training_set)
print(test_set)
training_set[, 2:3] = scale(training_set[, 2:3])
test_set[, 2:3] = scale(test_set[, 2:3])
print(training_set)
print(test_set)