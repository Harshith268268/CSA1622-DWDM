pencils <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)

mean_value <- mean(pencils)

median_value <- median(pencils)

mode_function <- function(x) 
{
  unique_x <- unique(x)
  freq <- tabulate(match(x, unique_x))
  mode_values <- unique_x[freq == max(freq)]
  return(mode_values)
}

mode_value <- mode_function(pencils)

cat("Mean:", mean_value, "\n")
cat("Median:", median_value, "\n")
cat("Mode:", mode_value, "\n")
