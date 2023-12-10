
average_ride_time <- bike_trips_2020 %>%
 group_by(member_casual) %>% 
  summarize(average_ride = mean(ride_minutes))

