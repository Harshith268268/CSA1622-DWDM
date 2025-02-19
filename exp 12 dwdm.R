data("mtcars")

car_index <- 1:nrow(mtcars)

plot(car_index, mtcars$mpg, type="o", col="blue", pch=16, lty=1, 
     xlab="Car Index", ylab="Values", main="MPG and QSEC Line Chart")

lines(car_index, mtcars$qsec, type="o", col="red", pch=17, lty=2)

legend("topright", legend=c("MPG", "QSEC"), col=c("blue", "red"), 
       pch=c(16,17), lty=c(1,2))
