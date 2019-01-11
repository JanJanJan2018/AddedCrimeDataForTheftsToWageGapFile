setwd("C:/Users/jlcor/Desktop/data science methods/Zillow Research 12-25-2018 downloads/Zillow Median Income and 2B rental price metro areas/Wage Gap Project/metro crime 2017 by metro/NY crime data 2017")

NY <- read.csv("NYcrime2017.csv",sep=',')
NYC <- NY[12:20,c(1,3)]
colnames(NYC) <- c('count','NYC')

NYC_BRT <- NYC[c(4,7,9),]

write.csv(NYC_BRT, 'NYC_BRT.csv', row.names = FALSE)
write.csv(NYC, 'NYC_all_counts.csv',row.names = FALSE)