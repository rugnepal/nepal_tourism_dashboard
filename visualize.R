

# Tourist arrival data
tourist_arrival_average_length_stay <- read_excel("data/tourist_arrival_average_length_stay.xlsx")

# GROSS_FOREIGN_EXCHANGE_EARNINGS_FROM_TOURISM
GROSS_FOREIGN_EXCHANGE_EARNINGS_FROM_TOURISM <- read_csv("data/93_GROSS FOREIGN EXCHANGE EARNINGS FROM TOURISM BY FY 205758.csv")

# foreign_exchange_earnings_from_tourism
foreign_exchange_earnings_from_tourism <- read_csv("data/95_foreign_exchange_earnings_from_tourism.csv")




# Tourist Arrival Chart
num_tourist <- ggplot(tourist_arrival_average_length_stay) + geom_line(aes(x = Year, y = Number), size = 1,color = "red") + labs(title = "Number Of Tourist") + theme_minimal()

# Tourist Average Stay
ave_tourist_stay <- ggplot(tourist_arrival_average_length_stay) + geom_line(aes(x = Year, y = `Average Length of Stay`), size = 1) + labs(title = "Average Length of Stay") + theme_minimal()


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

