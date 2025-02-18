data <- c(11,13,13,15,15,16,19,20,20,20,21,21,22,23,24,30,40,45,45,45,71,72,73,75)

bin_size <- 5
bins <- split(data, ceiling(seq_along(data)/bin_size))

bin_mean <- unlist(lapply(bins, mean))
bin_median <- unlist(lapply(bins, median))
bin_boundary <- unlist(lapply(bins, function(bin) ifelse(abs(bin - min(bin)) < abs(bin - max(bin)), min(bin), max(bin))))

data.frame(Original = data, Mean = bin_mean, Median = bin_median, Boundary = bin_boundary)
