calcGDP <- function(data, year=NULL, country=NULL){
  #if year is not NULL . . 
  if(!is.null(year)){
    data <- data[data$year == year,]
  }
  #if country is not NULL ...
  if (!is.null(country)){
    data <- data[data$country == country,]
  }
  gdp_new_variable <- data$pop*data$gdpPercap
  new_data <- cbind(data, gdp_new_variable)
  return(new_data)
}
