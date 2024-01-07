x <- c(2, 4, 5)

print("Sum: ")
print(sum(x))

print("Mean: ")
print(mean(x))

print("Product: ")
print(prod(x))

num <- 12
is_prime <- 0

for (i in 2:(num - 1)) {
  if (num %% i == 0) {
    print(i)
    is_prime <- 1
    break
  }
}
print(is_prime)
