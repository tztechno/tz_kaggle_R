

ggplot(data = bike_trips_2020) + 
  geom_bar(mapping = aes(x = factor(1), fill = member_casual), alpha = 1) + 
  coord_polar("y", start=0) + 
   theme_void() + 
    labs(title = "Total Trips", subtitle = "Member = 2,134,490 Casual = 1,338,294")



ggplot(data = average_ride_time) + 
  geom_col(mapping = aes(x = member_casual, fill = member_casual, y = average_ride), alpha = 1) +
   scale_y_continuous(breaks = seq(0, 40, by = 5)) +
    labs(title = "Average Ride Time", subtitle = "Minutes")
