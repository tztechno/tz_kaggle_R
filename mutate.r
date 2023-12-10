#


# mutate()を使用する場合
bike_trips_2020 <- bike_trips_2020 %>%
  mutate(ride_minutes = difftime(ended_at, started_at, units = "mins"))


# 直接新しい列を追加する場合
bike_trips_2020$ride_minutes <- difftime(bike_trips_2020$ended_at, bike_trips_2020$started_at, units = "mins")


# add new column of no data
df[[new_column_name]] <- NA


#
