#1
setwd("C:\\Users\\MSI\\Desktop\\IT24104030")
getwd

Delivery_Times <- read.table("Exercise - Lab 05.txt", header=TRUE, sep = '')

fix(Delivery_Times)
attach(Delivery_Times)

names(Delivery_Times) <-c("X1")

attach(Delivery_Times)

str(Delivery_Times)

#2
breaks <- seq(20,70, length.out=10)

hist(Delivery_Times$X1, breaks = breaks, right = FALSE,
     main ="Histogram for Delivery Times", xlab = "Delivery Time in minutes",
     col = "blue", border = "black")

#3


#4
freq_table <- table(cut(Delivery_Times$X1, breaks = breaks, right = FALSE))
cum_freq <- cumsum(freq_table)

plot(breaks[-1], cum_freq, type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)", 
     ylab = "Cumulative Frequency",
     col = "red")
