page_32_toursit_arrival_sex <- read_csv("data/page_32_toursit_arrival_sex.csv") %>% clean_names()

tourist_arrival_sex_chart <- ggplot(page_32_toursit_arrival_sex) + geom_line(aes(year,male),color = "blue") + geom_line(aes(year,female),color = "red") + theme_minimal() + labs(y = "Number of Tourist",title = "Tourist Arrival By Gender")