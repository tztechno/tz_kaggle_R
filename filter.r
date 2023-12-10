
bike_trips_2020 <- bike_trips_2020 %>% 
  filter(ride_minutes <= 720, ride_minutes >= 1)
