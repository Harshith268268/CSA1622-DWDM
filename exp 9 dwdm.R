marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)

bins_eq_freq <- split(sort(marks), cut(seq_along(sort(marks)), 3, labels = FALSE))

print("Equal-Frequency Bins:")
print(bins_eq_freq)

range_marks <- range(marks)
bin_width <- (range_marks[2] - range_marks[1]) / 3
bins_eq_width <- cut(marks, breaks = seq(range_marks[1], range_marks[2], by = bin_width), include.lowest = TRUE)

print("Equal-Width Bins:")
print(split(marks, bins_eq_width))

hist(marks, breaks = 5, col = "skyblue", main = "Histogram of Marks", xlab = "Marks", ylab = "Frequency", border = "black")

speed <- c(78.3, 81.8, 82, 74.2, 83.4, 84.5, 82.9, 77.5, 80.9, 70.6)

iqr_value <- IQR(speed)

std_dev <- sd(speed)

print(paste("Interquartile Range (IQR):", iqr_value))
print(paste("Standard Deviation:", std_dev))
