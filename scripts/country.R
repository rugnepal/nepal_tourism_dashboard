page_38_tourist_arrival_nationality_month <- read_excel("data/page_38_tourist_arrival_nationality_month.xlsx", 
                                                        col_types = c("text", "numeric", "numeric", 
                                                                      "numeric", "numeric", "numeric", 
                                                                      "numeric", "numeric", "numeric", 
                                                                      "numeric", "numeric", "numeric", 
                                                                      "numeric", "numeric", "numeric"))
page_38_tourist_arrival_nationality_month <- page_38_tourist_arrival_nationality_month %>% clean_names()
page_38_tourist_arrival_nationality_month <- page_38_tourist_arrival_nationality_month %>% mutate(
    natonality = fct_recode(natonality, "United States of America" = "USA"),
    natonality = fct_recode(natonality, "United Kingdom" = "UK")
)



# Tourist Arrival By country
tourist_arrival_country_data <- page_38_tourist_arrival_nationality_month %>% filter(year == "2018",natonality != c("Others","Grand-Total")) 


tourist_by_country_chart <- highchart() %>%
    hc_add_series_map(worldgeojson, tourist_arrival_country_data, value = "total", joinBy = c('name','natonality'))  %>% 
    hc_colorAxis(stops = color_stops()) %>% 
    hc_title(text = "Tourist by Nationality") %>% 
    hc_subtitle(text = "2018") %>%
    hc_tooltip(borderWidth = 1.5, headerFormat = "", valueSuffix = "  Tourist")



# Tourist Arrival By Country Line
tourist_arrival_country_bar <- ggplot(page_38_tourist_arrival_nationality_month) + geom_line(aes(year, total, color = natonality))



tourist_arrival_country_time <- hchart(page_38_tourist_arrival_nationality_month, "line", hcaes(x = year, y = total, group = natonality))


