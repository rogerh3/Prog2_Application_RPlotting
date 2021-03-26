#Roger H Hayden III
#SCS 142
#Version 1.0
#Application 2 - Data Source with Plotting
#Some comments were just from me messing with different things

#Summary of different variables
summary(StrokeData$avg_glucose_level)
summary(StrokeData$age)
mean(StrokeData$hypertension)
mean(StrokeData$heart_disease)
mean(StrokeData$stroke)

#Blue is Male, Red is Female
#ifelse is literally an if else statement
#ifelse == "something", "if true, this", "if false, this"

#StrokeData_Male <- subset(StrokeData, gender == "Male")
#StrokeData_Female <- subset(StrokeData, gender == "Female")

#density plot of glucose levels - Not normally distributed
plot(density(StrokeData$avg_glucose_level), main = "Density Plot for Average Glucose Levels")
#density plot of age
plot(density(StrokeData$age), main = "Density Plot for Age", col = "red")

#Male and Female Age vs. Avg Glucose Levels
plot(StrokeData$age, StrokeData$avg_glucose_level, 
     col = ifelse(StrokeData$gender == "Male", "Blue", "Red"),
     pch = ifelse(StrokeData$gender == "Male", 17, 19), 
     main = "Age vs. Average Glucose Level", 
     xlab = "Age", ylab = "Average Glucose Level")
legend("topleft", pch = c(19,17), c("Female", "Male"), col = c("Red", "Blue"))

#abline(lm(StrokeData_Male$avg_glucose_leve ~ StrokeData_Female$age, col = "Red"))
#abline(lm(StrokeData_Female$age ~ StrokeData_Male$avg_glucose_level, col = "Blue")

#hist. of Age values
hist(StrokeData$age, main = "Frequiency of Ages in the Dataset", xlab = "Age")

#Plot of Male and Female Age vs. Avg Glucose Levels for if they had a stroke or not
#It appears for this data most strokes happen for those above a certain age
plot(StrokeData$age, StrokeData$avg_glucose_level, 
     col = ifelse(StrokeData$stroke == "1", "Red", "Green"),
     pch = ifelse(StrokeData$gender == "Male", 17, 19), 
     main = "Age vs. Average Glucose Level", 
     xlab = "Age", ylab = "Average Glucose Level")
legend("topleft", pch = c(19,17, 19, 17), 
       c("Female", "Male", "Female Stroke", "Male Stroke"), 
       col = c("green", "green", "Red", "Red"))

    