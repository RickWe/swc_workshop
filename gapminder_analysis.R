download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "/Users/rick/Projects/R_stuff/gapminder-FiveYearData.csv")
gapminder <- read.csv("gapminder-FiveYearData.csv")

#useful commands:
#head
#str
#colnames
#nrow
#ncol
#View
#dim

#life expectancy in africa in 2007
#african countries, life expectancies for 2007
#step 1 2007 data
#step 2 get africa data
#step 3 pull 2007 $ Africa data from gapminder
is_2007 <- gapminder$continent == "Africa"
is_Africa <- gapminder$year == 2007
africa_2007 <- gapminder[is_2007 & is_Africa, c("country", "lifeExp")]

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point()

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color=continent)) +
  geom_point()

ggplot(data=gapminder, aes(x=year, y=lifeExp)) +
  geom_point()

ggplot(data=gapminder, aes(x=year, y=lifeExp, by=country, color=continent)) +
  geom_line()

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color=continent, size=pop)) +
  geom_point()
