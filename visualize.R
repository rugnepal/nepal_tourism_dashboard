

# Tourist arrival data
tourist_arrival_average_length_stay <- read_excel("data/tourist_arrival_average_length_stay.xlsx")


# Tourist Arrival Chart
num_tourist <- ggplot(tourist_arrival_average_length_stay) + geom_line(aes(x = Year, y = Number),size = 1) + labs(title = "Number Of Tourist")+ theme_minimal()

# Tourist Average Stay
ave_tourist_stay <- ggplot(tourist_arrival_average_length_stay) + geom_line(aes(x = Year, y = `Average Length of Stay`),size = 1) + labs(title = "Average Length of Stay")+ theme_minimal()




