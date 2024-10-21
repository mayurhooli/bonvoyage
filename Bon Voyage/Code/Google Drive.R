library(googledrive)
drive_find(n_max = 30)
ch <- drive_get(id = "1X0YJEpYKWgvtFVHyPaV_gZ2vBfIP_C0b")

ch <- drive_ls(path = "IR_PROJECT/Cities/Listings/")
city_listing <- ch[1]
city_listing <- city_listing[[1]]
city_listing <- sort(city_listing)

ch <- drive_ls(path = "IR_PROJECT/Cities/Calendar/")
city_calendar <- ch[1]
city_calendar <- city_listing[[1]]
city_calendar <- sort(city_calendar)

for(i in 1:length(city_calendar)){

  myurl <- "https://drive.google.com/open?id=1CdoaIN3HDkPwygMWcoeL6gKbPa97IgDt"
  df <- read.csv(url(myurl))
  
}