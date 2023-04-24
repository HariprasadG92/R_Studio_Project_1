dataset = read.csv("diabetes_dataset.csv")

bmi = dataset [,6]
age = dataset [,2]

data = data.frame(bmi, age)

library(caTools)

set.seed(42)

split = sample.split(data$age, SplitRatio = 0.8)

training_set = subset(data, split==TRUE)
View(training_set)

testing_set = subset(data, split==FALSE)
View(testing_set)

regressor = lm(formula = age~bmi, data = training_set)

y_pred = predict(regressor, newdata = testing_set)
View(y_pred)

library(ggplot2)

plot(testing_set$bmi, testing_set$age, type = 'p', 
     col = 'blue', xlab = 'BMI', ylab = 'AGE')

lines(testing_set$bmi, y_pred, type = 'o', col = 'red')
