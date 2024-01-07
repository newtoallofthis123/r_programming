num <- as.integer(readline(prompt = "Enter a number: "))

print_factors <- function(n) {
  print(paste("The factors of", n, "are:"))
  for (i in 1:n) {
    if ((n %% i) == 0) {
      print(i)
    }
  }
}

print_factors(num)

a <- "987654321"
substr(a, 3, 5)
