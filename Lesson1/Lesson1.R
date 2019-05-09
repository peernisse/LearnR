
#Lesson 1

#Check working directory
getwd()

#Session info
sessionInfo()


#Make a vector
myVecN<-c(1,2,3,4,5,6,7,8)
class(myVecN)
str(myVecN)

myVecL<-c('one','two',"three",'four',"five",'six')
class(myVecL)

#Remove these objects
rm(myVecN,myVecL)

v1<-c(2,4,6,8,10)
v2<-c(1,1,2,2,0.5)
v3<-v1*v2
v1/v2
v1-v2

myFactor<-factor(c('A','B','C','A','B','C'),levels=c('C',"B",'A'))
myFactor

sort(myFactor)

data()



#Use iris dataset for plotting

myDF<-iris
help(iris)
?iris

head(myDF)
tail(myDF)

unique(myDF$Species)
?unique

table(myDF$Species)

#Subsetting
myDF[1:5,c('Species','Sepal.Length')]

setosa<-myDF[myDF$Species == 'setosa',]


#Get column names
names(myDF)

#Rename Species as upper case
colnames(myDF)[5]<-'SPECIES'
names(myDF)

#Rename columns explcitly
names(myDF)<-c('SP_LENGTH','SP_WIDTH','PTL_LENGTH','PTL_WIDTH','SPECIES')
head(myDF)


#Summary of the data
summary(myDF)

#plot iris data
plot(myDF$SP_LENGTH~myDF$SP_WIDTH)
plot(myDF$SP_LENGTH~myDF$SP_WIDTH,col=myDF$SPECIES)

#Make linear model
mdl<-lm(myDF$SP_LENGTH~myDF$SP_WIDTH)
summary(mdl)


#Add line to plot
plot(myDF$SP_LENGTH~myDF$SP_WIDTH,col=myDF$SPECIES)
abline(mdl)




#Make boxplot
boxplot(myDF$PTL_LENGTH~myDF$SPECIES, xlab='Species',ylab='Petal Length (in)')


#make histogram
hist(myDF$PTL_LENGTH)



#Make qqplot
qqnorm(myDF$PTL_LENGTH,col=myDF$SPECIES)







