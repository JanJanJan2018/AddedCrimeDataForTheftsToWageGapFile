setwd("C:/Users/jlcor/Desktop/data science methods/Zillow Research 12-25-2018 downloads/Zillow Median Income and 2B rental price metro areas/Wage Gap Project/metro crime 2017 by metro/Atlanta crime 2017")
atl <- read.csv("Atlanta_2017_BurglaryAndTheft.csv", sep=',')
atl1 <- length(atl[,1]) #7946 X 3

setwd("C:/Users/jlcor/Desktop/data science methods/Zillow Research 12-25-2018 downloads/Zillow Median Income and 2B rental price metro areas/Wage Gap Project/metro crime 2017 by metro/Boston crime 2017")
boston <- read.csv("Boston_2017_BurglaryRobberyTheft.csv",sep=',')
boston1 <- length(boston[,1]) #5102 X 18

setwd("C:/Users/jlcor/Desktop/data science methods/Zillow Research 12-25-2018 downloads/Zillow Median Income and 2B rental price metro areas/Wage Gap Project/metro crime 2017 by metro/Chicago crime 2017")
chicago <- read.csv("Chicago_crime_2017_BurglariesAndTheft.csv", sep=',')
chicago1 <- length(chicago[,1]) #10622 X 3

setwd("C:/Users/jlcor/Desktop/data science methods/Zillow Research 12-25-2018 downloads/Zillow Median Income and 2B rental price metro areas/Wage Gap Project/metro crime 2017 by metro/Dallas crime 2017")
dallas <- read.csv('Dallas_2017_BurglaryAndTheft.csv', sep=',')
dallas1 <- length(dallas[,1]) #35011 X 101

setwd("C:/Users/jlcor/Desktop/data science methods/Zillow Research 12-25-2018 downloads/Zillow Median Income and 2B rental price metro areas/Wage Gap Project/metro crime 2017 by metro/DC crime 2017")
DC <- read.csv('DC_2017_BurglaryRobberyTheft.csv', sep=',')
DC <- DC[,c(1,3)]
colnames(DC) <- c('count','crime')
DC1 <- sum(DC$count) #31778

setwd("C:/Users/jlcor/Desktop/data science methods/Zillow Research 12-25-2018 downloads/Zillow Median Income and 2B rental price metro areas/Wage Gap Project/metro crime 2017 by metro/Detroit crime 2017")
detroit <- read.csv('Detroit_2017_BurglaryTheftRobbery.csv', sep=',')
detroit1 <- length(detroit[,1]) #19312 X 25

setwd("C:/Users/jlcor/Desktop/data science methods/Zillow Research 12-25-2018 downloads/Zillow Median Income and 2B rental price metro areas/Wage Gap Project/metro crime 2017 by metro/Houston crime 2017")
houston <- read.csv('HoustonCrime2017_BurglaryRobberyTheft.csv', sep=',')
houston1 <- length(houston[,1]) #105785 X 2

setwd("C:/Users/jlcor/Desktop/data science methods/Zillow Research 12-25-2018 downloads/Zillow Median Income and 2B rental price metro areas/Wage Gap Project/metro crime 2017 by metro/LA metro crime statistical data")
LA <- read.csv("Crime_Data_2017_BRT.csv", sep=',')
LA1 <- length(LA[,1]) #95092 X 6

setwd("C:/Users/jlcor/Desktop/data science methods/Zillow Research 12-25-2018 downloads/Zillow Median Income and 2B rental price metro areas/Wage Gap Project/metro crime 2017 by metro/Miami crime 2017")
miami <- read.csv("MiamiCrimeBRT_2017.csv", sep=',')
dim(miami) #3 X 3
miami1 <- sum(miami[,1]) #9228

setwd("C:/Users/jlcor/Desktop/data science methods/Zillow Research 12-25-2018 downloads/Zillow Median Income and 2B rental price metro areas/Wage Gap Project/metro crime 2017 by metro/NY crime data 2017")
NY <- read.csv('NYC_BRT.csv')
dim(NY) #3 X 2
NY1 <- sum(NY$count) #30834

setwd("C:/Users/jlcor/Desktop/data science methods/Zillow Research 12-25-2018 downloads/Zillow Median Income and 2B rental price metro areas/Wage Gap Project/metro crime 2017 by metro/Philadelphia crime 2017")
philly <- read.csv("PhiladelphiaCrimeData2017_BRT.csv", sep=',')
dim(philly) #10X3
philly1 <- sum(philly[,1]) #54327

setwd("C:/Users/jlcor/Desktop/data science methods/Zillow Research 12-25-2018 downloads/Zillow Median Income and 2B rental price metro areas/Wage Gap Project/metro crime 2017 by metro/Phoenix crime 2017")
phoenix <- read.csv('PhoenixCrime2017_BRT.csv', sep=',')
dim(phoenix) #4X3
phoenix1 <-sum(phoenix[,1]) #63646

setwd("C:/Users/jlcor/Desktop/data science methods/Zillow Research 12-25-2018 downloads/Zillow Median Income and 2B rental price metro areas/Wage Gap Project/metro crime 2017 by metro/Riverside crime 2017")
Riverside <- read.csv('RiversideCrimeData2017_BRT.csv', sep=',')
dim(Riverside) #3X3
Riverside1 <- sum(Riverside[,1]) #8813


setwd("C:/Users/jlcor/Desktop/data science methods/Zillow Research 12-25-2018 downloads/Zillow Median Income and 2B rental price metro areas/Wage Gap Project/metro crime 2017 by metro/SF metro crime statistical data")
SF <- read.csv('Police_Department_Incident_Reports__2017_BRT.csv', sep=',')
SF1 <- length(SF[,1]) #15760 X 3

burglaryRobberyTheft <- c(atl1,boston1,chicago1,dallas1,detroit1,houston1,
           miami1,NY1,philly1,phoenix1,Riverside1,SF1,DC1,LA1)

setwd('C:/Users/jlcor/Desktop/data science methods/Zillow Research 12-25-2018 downloads/Zillow Median Income and 2B rental price metro areas/Wage Gap Project/Created Reports')
top14Data <- read.csv('WageGapInformationTop14Metros.csv',sep=',')
metroNames <- as.character(unique(top14Data$CBSA.Title))

Top14Metros_Thefts <- cbind(metroNames, burglaryRobberyTheft)
colnames(Top14Metros_Thefts) <- c('CBSA.Title','BurglaryRobberyTheftCounts')
write.csv(Top14Metros_Thefts,'MetroThefts.csv',row.names=FALSE)

setwd("C:/Users/jlcor/Desktop/data science methods/Zillow Research 12-25-2018 downloads/Zillow Median Income and 2B rental price metro areas/Wage Gap Project/metro crime 2017 by metro")
write.csv(Top14Metros_Thefts,'MetroThefts.csv',row.names=FALSE)