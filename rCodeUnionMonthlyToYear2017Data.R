setwd("C:/Users/jlcor/Desktop/data science methods/Zillow Research 12-25-2018 downloads/Zillow Median Income and 2B rental price metro areas/Wage Gap Project/metro crime 2017 by metro/Houston Crime 2017/monthlyCrimeData")

###################################################################################################


#manually save all the downloaded monthly files to csv from within Excel

jAll <- read.csv('jan17.csv', sep=',')
fAll <- read.csv('feb17.csv',sep=',')
mAll <- read.csv('mar17.csv', sep=',')
aAll <- read.csv('apr17.csv',sep=',')
MAll <- read.csv('may17.csv', sep=',')
jnAll <- read.csv('jun17.csv',sep=',')
JAll <- read.csv('jul17.csv', sep=',')
AAll <- read.csv('aug17.csv',sep=',')
sAll <- read.csv('sep17.csv', sep=',')
oAll <- read.csv('oct17.csv',sep=',')
nAll <- read.csv('nov17.csv', sep=',')
dAll <- read.csv('dec17.csv',sep=',')



colnames(jAll) <- colnames(jAll)
colnames(fAll) <- colnames(jAll)
colnames(mAll) <- colnames(jAll)
colnames(aAll) <- colnames(jAll)
colnames(MAll) <- colnames(jAll)
colnames(jnAll) <- colnames(jAll)
colnames(JAll) <- colnames(jAll)
colnames(AAll) <- colnames(jAll)
colnames(sAll) <- colnames(jAll)
colnames(oAll) <- colnames(jAll)
colnames(nAll) <- colnames(jAll)
colnames(dAll) <- colnames(jAll)

HoustonAllCrime2017 <- rbind.data.frame(jAll,fAll,mAll,aAll,MAll,jnAll,JAll,AAll,sAll,oAll,nAll,dAll)

HoustonAllCrime2017$Date <- as.Date(HoustonAllCrime2017$Date, "%m/%d/%Y")

#some dates aren't 2017 even though obtained from the data portal by month and year of 2017
d <- as.character(HoustonAllCrime2017$Date)
dd <- grepl('2017',d)
length(dd)
sum(dd)
sum(dd)-length(dd) #1153 observations are not in 2017
h <- HoustonAllCrime2017[dd,]
dim(h)#[1] 118581     10
dim(HoustonAllCrime2017)#[1] 119734     10

write.csv(h,'HoustonAllCrime2017.csv', row.names=FALSE)




######################################################################################################

# Houston Burglaries, Robberies, and Theft 2017 data set
# from data sets filtered for those crimes and auto theft in Tableau and exported to csv from excel
# formatted files


j <- read.csv('janBRT.csv', sep=',')
f <- read.csv('febBRT.csv',sep=',')
m <- read.csv('marBRT.csv', sep=',')
a <- read.csv('aprBRT.csv',sep=',')
M <- read.csv('mayBRT.csv', sep=',')
jn <- read.csv('junBRT.csv',sep=',')
J <- read.csv('julBRT.csv', sep=',')
A <- read.csv('augBRT.csv',sep=',')
s <- read.csv('sepBRT.csv', sep=',')
o <- read.csv('octBRT.csv',sep=',')
n <- read.csv('novBRT.csv', sep=',')
d <- read.csv('decBRT.csv',sep=',')


#the column names change locations month to month

#find the correct columns to use for Date and type of offense
a <- a[,c(4,7)]
A <- A[,c(3,6)]
d <- d[,c(3,6)]
f <- f[,c(4,7)]
J <- J[,c(3,6)]
j <- j[,c(4,7)]
M <- M[,c(3,6)]
m <- m[,c(4,7)]
n <- n[,c(3,6)]
o <- o[,c(3,6)]
s <- s[,c(3,6)]
jn <- jn[,c(3,6)]



y2017Houston <- rbind.data.frame(j,f,m,a,M,jn,J,A,s,o,n,d)
write.csv(y2017Houston,'HoustonCrime2017_BurglaryRobberyTheft.csv', row.names = FALSE)
hc17 <- read.csv('HoustonCrime2017_BurglaryRobberyTheft.csv')

dim(hc17)
#[1] 105785      2

unique(hc17$Offense.Type)
#[1] Theft      Burglary   Auto Theft Robbery    AutoTheft 
#Levels: Auto Theft AutoTheft Burglary Robbery Theft

#there are 105,785 instances of burglary, robbery, or theft in Houston in 2017

############################################################################################