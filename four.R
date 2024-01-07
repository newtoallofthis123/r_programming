fib <- function(n) {
  if (n <= 1) {
    return(1)
  } else {
    return(fib(n - 1) + fib(n - 2))
  }
}

num <- as.integer(readline(prompt = "Enter a number: "))

for (i in 1:num) {
  print(fib(i))
}

sum_of_n <- function(n) {
  if (n <= 1) {
    return(1)
  } else {
    return(n + sum_of_n(n - 1))
  }
}

num <- as.integer(readline(prompt = "Enter a number: "))
print(sum_of_n(num))
