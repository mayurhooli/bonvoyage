city_listing <- list.files("G://Courses//CSCE670//Project//Cities")
city_calendar <- list.files("G://Courses//CSCE670//Project//Calendar")

for(i in 68:length(city_calendar)){
  listing <- read.csv(paste("G://Courses//CSCE670//Project//Cities", city_listing[i], sep = "//"))
  calendar <- read.csv(paste("G://Courses//CSCE670//Project//Calendar", city_listing[i], sep = "//"))
  
  listings <- listing[c(1,5,8)]
  calendar <- calendar[c(1,4)]
  
  calendar$price <- as.numeric(gsub('[$,]', '', calendar$price))
  cal1 <- aggregate(calendar$price, list(id = calendar$listing_id), mean)
  names(cal1)[1] <- "id"
  names(cal1)[2] <- "price"
  
  sample <- merge(listings, cal1, by = "id")
  sample2 <- sample[order(sample$price),]
  filed <- paste("G://Courses//CSCE670//Project//Values", city_listing[i], sep = "//")
  write.csv(sample2, filed, row.names = FALSE)
}
