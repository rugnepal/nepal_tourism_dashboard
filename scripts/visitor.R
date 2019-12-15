page_32_toursit_arrival_sex <- read_csv("data/page_32_toursit_arrival_sex.csv") %>% clean_names()

tourist_arrival_sex_chart <- ggplot(page_32_toursit_arrival_sex) + geom_line(aes(year,male),color = "blue") + geom_line(aes(year,female),color = "red") + theme_minimal() + labs(y = "Number of Tourist",title = "Tourist Arrival By Gender")

# Visitor By age Group 
visitor_age_df <- read_excel("data/34 edited.xlsx", 
                             col_types = c("numeric", "numeric", "numeric", 
                                           "numeric", "numeric", "numeric", 
                                           "numeric", "numeric")) %>% clean_names()
names(visitor_age_df) <- c("year","total","0-15","16-30","31-45","46-60","60+","not_spec")

visitor_age_df <- visitor_age_df%>% select(-total) %>% pivot_longer(-year, names_to = "age_group", values_to = "count")

visitor_age_chart <- ggplot(visitor_age_df) + geom_line(aes(year,count,color=age_group)) + labs(title = "Tourist By Age") + theme_minimal() + theme(legend.position = "buttom")