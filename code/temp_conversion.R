c_to_f <- function(celsius){
  fahrenheit <- 9/5*celsius + 32
  return(fahrenheit)
}

f_to_c <- function(fahrenheit){
  celsius <- (fahrenheit - 32)*(5/9)
  return(celsius)
}
