load(url('https://github.com/hbchoi/SampleData/raw/master/country.RData'))
country
# summary(country$continent) # factor로 만들기 전에는 다른 결과가 나온다.
#1
head(country, 5)
tail(country, 5)

nlevels(factor(country$code))
#2
typeof(country)
#str(country)
sapply(country,class)
country$continent <- as.factor(country$continent)
sapply(country,class)

# 레빌에 10개 이상인지 알려주는 함수.
str(country)
count_level <- function(n){
  length(unique(n)) < 10
}

str(country)
sapply(country, count_level)

#3
summary(country$continent)

#4
levels(country$continent)<-c("AF", "AS", "EU", "NA", "OC", "SA")
levels(country$continent)
summary(country$continent)

#5
mean_gdp<-mean(country$GDP)
mean_gdp2<-mean(country[,4])
mean_gdp
country$GDP>mean_gdp
country_gdp_factor<-factor(country$GDP>mean_gdp)
country_gdp_factor
levels(country_gdp_factor)<-c("Low","High")

summary(country_gdp_factor)

country$GDP_group<-country_gdp_factor
summary(country_gdp_factor)

#5
avg_GDP <- mean(country$GDP)
avg_GDP

GDP_group <- ifelse(country$GDP >= avg_GDP, "HIGH", "LOW")
GDP_group

GDP_group <- factor(GDP_group)
summary(GDP_group)

country <- cbind(country, GDP_group)
country

# Other group
meanGDP <- mean(country$GDP)
country$GDP_group <- as.factor(ifelse(country$GDP < meanGDP, "LOW", "HIGH"))
table(country$GDP_group)

#6
Find_continent<-function(n){return(country$continent==n)}
Find_continent("AS")
Find_continent("EU")
