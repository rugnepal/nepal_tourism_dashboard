

# Tourist arrival data
tourist_arrival_average_length_stay <- read_excel("data/tourist_arrival_average_length_stay.xlsx")

# GROSS_FOREIGN_EXCHANGE_EARNINGS_FROM_TOURISM
GROSS_FOREIGN_EXCHANGE_EARNINGS_FROM_TOURISM <- read_csv("data/93_GROSS FOREIGN EXCHANGE EARNINGS FROM TOURISM BY FY 205758.csv")

# foreign_exchange_earnings_from_tourism
foreign_exchange_earnings_from_tourism <- read_csv("data/95_foreign_exchange_earnings_from_tourism.csv")


# Tourist Arrival Chart
num_tourist <- ggplot(tourist_arrival_average_length_stay) + geom_line(aes(x = Year, y = Number), size = 1) + labs(title = "Number Of Tourist") + theme_minimal()

# Tourist Average Stay
ave_tourist_stay <- ggplot(tourist_arrival_average_length_stay) + geom_line(aes(x = Year, y = `Average Length of Stay`), size = 1) + labs(title = "Average Length of Stay") + theme_minimal()


# GROSS_FOREIGN_EXCHANGE_EARNINGS_FROM_TOURISM  in NRS Chart
GROSS_FOREIGN_EXCHANGE_EARNINGS_FROM_TOURISM_NRS_chart <- ggplot(GROSS_FOREIGN_EXCHANGE_EARNINGS_FROM_TOURISM) + geom_line(aes(x = `Fiscal Year`, y = `NRs.( million)`, group = 1), size = 1) + labs(title = "Gross Foreign Exchange Earnings  in NRS") + theme_minimal()


# GROSS_FOREIGN_EXCHANGE_EARNINGS_FROM_TOURISM  in US$ Chart
GROSS_FOREIGN_EXCHANGE_EARNINGS_FROM_TOURISM_US_chart <- ggplot(GROSS_FOREIGN_EXCHANGE_EARNINGS_FROM_TOURISM) + geom_line(aes(x = `Fiscal Year`, y = GROSS_FOREIGN_EXCHANGE_EARNINGS_FROM_TOURISM$`US$ (million)`, group = 1), size = 1) + labs(title = "Gross Foreign Exchange Earnings  in US$") + theme_minimal()



# Foreign Exchange 