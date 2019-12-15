

# Tourist arrival data
tourist_arrival_average_length_stay <- read_excel("data/tourist_arrival_average_length_stay.xlsx")

# GROSS_FOREIGN_EXCHANGE_EARNINGS_FROM_TOURISM
GROSS_FOREIGN_EXCHANGE_EARNINGS_FROM_TOURISM <- read_csv("data/93_GROSS FOREIGN EXCHANGE EARNINGS FROM TOURISM BY FY 205758.csv")

# foreign_exchange_earnings_from_tourism
foreign_exchange_earnings_from_tourism <- read_csv("data/95_foreign_exchange_earnings_from_tourism.csv")


# Tourist Arrival Chart
num_tourist <- ggplot(tourist_arrival_average_length_stay) + geom_line(aes(x = Year, y = Number), size = 1,color = "red") + labs(title = "Number Of Tourist") + theme_minimal()

# Tourist Average Stay
ave_tourist_stay <- ggplot(tourist_arrival_average_length_stay) + geom_line(aes(x = Year, y = `Average Length of Stay`), size = 1,color="blue") + labs(title = "Average Length of Stay") + theme_minimal()


# GROSS_FOREIGN_EXCHANGE_EARNINGS_FROM_TOURISM  in NRS Chart
GROSS_FOREIGN_EXCHANGE_EARNINGS_FROM_TOURISM_NRS_chart <- ggplot(GROSS_FOREIGN_EXCHANGE_EARNINGS_FROM_TOURISM) + geom_line(aes(x = `Fiscal Year`, y = `NRs.( million)`, group = 1), size = 1, color = "green") + labs(title = "Gross Foreign Exchange Earnings  in NRS") + theme_minimal() + theme(axis.text.x = element_blank(), axis.ticks.x = element_blank() )


# GROSS_FOREIGN_EXCHANGE_EARNINGS_FROM_TOURISM  in US$ Chart
GROSS_FOREIGN_EXCHANGE_EARNINGS_FROM_TOURISM_US_chart <- ggplot(GROSS_FOREIGN_EXCHANGE_EARNINGS_FROM_TOURISM) + geom_line(aes(x = `Fiscal Year`, y = `US$ (million)`, group = 1), size = 1,color = "blue") + labs(title = "Gross Foreign Exchange Earnings  in US$") + theme_minimal() + theme(axis.text.x = element_blank(), axis.ticks.x = element_blank())



# Foreign Exchange Earnings from Tourism sector Chart
gdp_chart <- ggplot(foreign_exchange_earnings_from_tourism) + geom_line(aes(Year, `As_%_of_GDP`, group = 1),color = "red") +theme_minimal()+ labs(y = "% Of GDP") +theme(
  axis.text.x = element_blank(),
  axis.ticks.x = element_blank()
)



# Tourist Arrival By country barchart


# Disclaimer: We haven't used custom functions to make this code efficient

# Tourist arrival data
tourist_arrival_average_length_stay <- read_excel("data/tourist_arrival_average_length_stay.xlsx")


# Tourist Arrival Chart
num_tourist <- ggplot(tourist_arrival_average_length_stay) + geom_line(aes(x = Year, y = Number),color = "blue") + labs(title = "Number Of Tourist")+ theme_minimal()

# Tourist Average Stay
ave_tourist_stay <- ggplot(tourist_arrival_average_length_stay) + geom_line(aes(x = Year, y = `Average Length of Stay`),color="purple") + labs(title = "Average Length of Stay")+ theme_minimal()


######################### Purpose of Visit 1993 - 2018 ##################################

purpose_of_tourist_visit <-  read_excel("data/51. TOURIST ARRIVAL BY PURPOSE OF VISIT, 1993-2018.xlsx", 
                                        col_types = c("numeric", "numeric", "numeric", 
                                                      "numeric", "numeric", "numeric", 
                                                      "numeric", "numeric", "numeric", 
                                                      "numeric"))
# clean names
purpose_of_tourist_visit <- purpose_of_tourist_visit %>% clean_names()

# add ggplot function
gg_ta <- ggplot(purpose_of_tourist_visit)

# chart 1
pilgrimage_purpose <-  gg_ta + geom_line(aes(x = year, y = pilgrimage)) + 
    labs(title = "Pilgrimage visit by Year, 1993 - 2018") + 
    theme_minimal() 


plot_pilgrimage_purpose <- ggplotly(pilgrimage_purpose) %>% config(displayModeBar = F) 

# chart 2
business_purpose <- gg_ta + geom_line(aes(x = year, y = business)) + 
    labs(title = "Business visit by Year, 1993 - 2018") + 
    theme_minimal()

plot_business_purpose <- ggplotly(business_purpose) %>% config(displayModeBar = F) 

# chart 3
trekking_purpose <- gg_ta + geom_line(aes(x = year, y = trekking_and_mountaineering)) + 
    labs(title = "Trekking & Mountaineering visit by Year, 1993 - 2018") + 
    theme_minimal()

plot_trekking_purpose <- ggplotly(trekking_purpose) %>% config(displayModeBar = F) 

# chart 4
official_purpose <- gg_ta + geom_line(aes(x = year, y = official)) + 
    labs(title = "Official visit by Year, 1993 - 2018") + 
    theme_minimal()

plot_official_purpose <- ggplotly(official_purpose) %>% config(displayModeBar = F)

# chart 5
conv_conf_purpose <- gg_ta + geom_line(aes(x = year, y = conv_conf)) + 
    labs(title = "Conv / Conference visit by Year, 1993 - 2018") + 
    theme_minimal()

plot_conv_conf_purpose <- ggplotly(conv_conf_purpose) %>% config(displayModeBar = F)

# chart 6
others_purpose <- gg_ta + geom_line(aes(x = year, y = others)) + 
    labs(title = "Not Specified visit by Year, 1993 - 2018") + 
    theme_minimal()

plot_others_purpose  <- ggplotly(others_purpose ) %>% config(displayModeBar = F)

# chart 7
others_purpose <- gg_ta + geom_bar(aes(x = year, y = others)) + 
    labs(title = "Not Specified visit by Year, 1993 - 2018") + 
    theme_minimal()

#####################################################################################











