data("AirPassengers")

passenger_counts <- as.numeric(AirPassengers)

bins <- c(100, 200, 350, 500, 650, 800)


hist(passenger_counts, breaks = bins, main="Histogram of AirPassengers Dataset",
     xlab="Number of Passengers", ylab="Frequency", col="skyblue", border="black")
