library(readr)
mileage<-read.csv("C:/Users/hari prasad/Desktop/VIP/R_Studio_projects/mileage.csv")
View(mileage)
attach(mileage)

#########EDA############
library(car)
pairs(mileage)
# scatter plot of all data
cor(mileage)
#correlation 

##########Model building###########
model<-lm('MPG~.',data=mileage)
summary(model)

###############validation Techniques###########
car::vif(model)

library(MASS)
stepAIC(model)
#best model=HP+SP+VOL

################Validation plots############
#plot(model)
residualPlots(model)
#plots b/w residuals and HP,SP,VOL,WT
qqPlot(model)
# to check for normality and we can observe some outliers here


#######################Deletion Diagnostic#################
influenceIndexPlot(model)

################  Iteration 1,2,3  #####################
mileage['HP2']<-HP*HP
mileage['SP2']<-SP*SP
#transformations HP_sq and SP_sq
mileage1<-mileage[-c(81,77,66),]
#now for this data bulid a model
model1<-lm('MPG~.',data=mileage1)
summary(model1)
car::vif(model1)
#plot(model1)
residualPlots(model1)
qqPlot(model1)
influenceIndexPlot(model1)

###############   Iteration 4  #############################
mileage2<-mileage[-c(77,81,66,79),]
#View(mileage2)
model2<-lm('MPG~.',data=mileage2[,-5])
summary(model2)
car::vif(model2)
residualPlots(model2)

############### Final  Iteration   #############################
mileage2<-mileage[-c(77,81,66,79),]
#View(mileage2)
final_model<-lm('MPG~.',data=mileage2[,-c(5,7)])
summary(final_model)
residualPlots(final_model)


