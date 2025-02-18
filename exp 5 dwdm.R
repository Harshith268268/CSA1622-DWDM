age <- c(23, 23, 27, 27, 39, 41, 47, 49, 50, 52, 54, 54, 56, 57, 58, 58, 60, 61)
fat <- c(9.5, 26.5, 7.8, 17.8, 31.4, 25.9, 27.4, 27.2, 31.2, 34.6, 42.5, 28.8, 33.4, 30.2, 34.1, 32.9, 41.2, 35.7)

age_mean <- mean(age)
age_median <- median(age)
age_sd <- sd(age)

fat_mean <- mean(fat)
fat_median <- median(fat)
fat_sd <- sd(fat)

cat("Age - Mean:", age_mean, "Median:", age_median, "SD:", age_sd, "\n")
cat("Body Fat - Mean:", fat_mean, "Median:", fat_median, "SD:", fat_sd, "\n")

par(mfrow=c(1,2))  
boxplot(age, main="Boxplot of Age", col="lightblue")
boxplot(fat, main="Boxplot of Body Fat %", col="lightgreen")

par(mfrow=c(1,2)) 
plot(age, fat, main="Scatter Plot: Age vs Body Fat %", xlab="Age", ylab="Body Fat %", col="blue", pch=19)
qqnorm(fat, main="Q-Q Plot for Body Fat %")
qqline(fat, col="red")
