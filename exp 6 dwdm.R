age <- c(23, 23, 27, 27, 39, 41, 47, 49, 50, 52, 54, 54, 56, 57, 58, 58, 60, 61)
value_to_normalize <- 35

min_age <- min(age)
max_age <- max(age)
min_max_norm <- (value_to_normalize - min_age) / (max_age - min_age)

mean_age <- mean(age)
sd_age <- 12.94  
z_score_norm <- (value_to_normalize - mean_age) / sd_age

j <- ceiling(log10(max(abs(age)))) 
decimal_scaling_norm <- value_to_normalize / (10^j)

cat("Min-Max Normalization of 35:", round(min_max_norm, 4), "\n")
cat("Z-Score Normalization of 35:", round(z_score_norm, 4), "\n")
cat("Decimal Scaling Normalization of 35:", round(decimal_scaling_norm, 4), "\n")
