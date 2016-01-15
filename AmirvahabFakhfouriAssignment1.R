#Amirvahab Fakhfouri
#Assignment 1
# author: "curtis kephart"
# date: "winter 2016"
# assignment: https://github.com/EconomiCurtis/econ294_2015/blob/master/Assignments/Econ_294_Assignment_1.pdf
### Q0
firstname<- "Amirvhab"
lastname <-"fakhfouri"
studentID<- "1505020"
print (paste(firstname,lastname))
print(studentID)

### Q1
df.dta<-read.dta("https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_dta.dta")
df.csv<-read.csv("https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_CSV.csv")
df.td<-read.table("https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_TSV.txt")
load("C:\\Users\\VAIO-VAIO\\Desktop\\NHIS_2007_RData.RData")

#'##Q2
#'stata file size is 192 KB
#'txt file size is 0.99 MB
#'csv file size is 1.50 MB
#'RData file size is 48 KB
# this variability probably is because of their different type. With different types we can have same data with a lower size.

### Q3
summary(NHIS_2007_RData)
ncol(NHIS_2007_RData)
length(NHIS_2007_RData)
nrow(NHIS_2007_RData)
dim(NHIS_2007_RData)
class(NHIS_2007_RData)
typeof(NHIS_2007_RData)
#'> ncol(NHIS_2007_RData)
#[1] 9
#> length(NHIS_2007_RData)
#[1] 9
#> nrow(NHIS_2007_RData)
#[1] 4785
#> dim(NHIS_2007_RData)
#[1] 4785    9
#> class(NHIS_2007_RData)
#[1] "data.frame"
#> typeof(NHIS_2007_RData)
#[1] "list"


### Q4
df<-read.dta("https://github.com/EconomiCurtis/econ294_2015/raw/master/data/org_example.dta")
str(df)
summary(df$rw)
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
# 1.8    10.7    15.9    19.8    24.4   354.8  521279

### Q5
v = c(1,2,3,4,5,6,7,4,NULL,NA)
length(v)
#vector`s length : 9
# NULL does not count as matrise`s element
mean(v)
# the mean is equal to 4

### Q6
x = matrix(data=c(1,4,7,2,5,8,3,6,9),ncol=3)
x
t(x)
eigen(x)
y = matrix(data=c(1,3,2,2,2,3,3,1,0),ncol=3)
y
yinv<-solve(y)
y%*%yinv

### Q7

carat= c(5,2,.05,1.5,5,NA,3)
cut= c("fair","good","very good","good","fair","Ideal","fair")  
clarity=c("SI1","I1","VI1","VS1","IF","VVS2",NA)
price=c(850,450,450,0,750,980,420)
diamonds=data.frame(carat,cut,clarity,price)
diamonds
mean(price)
s<-subset(diamonds,cut=="fair")
mean(s$price)
s.1<-subset(diamonds,cut=="good")
mean(s.1$price)
s.2<-subset(diamonds,cut=="very good")
mean(s.2$price)
s.3<-subset(diamonds,cut=="Ideal")
mean(s.3$price)
s.4<-subset(diamonds,cut!="fair")
mean(s.4$price)
s.5<-subset(diamonds,carat>2|cut=="Ideal"|cut=="very good")
mean(s.5$price)
median(s.5$price)

#'> mean(price)
#[1] 557.1429
#> s<-subset(diamonds,cut=="fair")
#> mean(s$price)
#[1] 673.3333
#> s.1<-subset(diamonds,cut=="good")
#> mean(s.1$price)
#[1] 225
#> s.2<-subset(diamonds,cut=="very good")
#> mean(s.2$price)
#[1] 450
#> s.3<-subset(diamonds,cut=="Ideal")
#> mean(s.3$price)
#[1] 980
#> s.4<-subset(diamonds,cut!="fair")
#> mean(s.4$price)
#3[1] 470
#> s.5<-subset(diamonds,carat>2|cut=="Ideal"|cut=="very good")
#> mean(s.5$price)
#[1] 690
#> median(s.5$price)
#[1] 750
#> 
