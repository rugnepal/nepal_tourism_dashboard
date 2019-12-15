library("tabulizer")

library(readr)

# PDF Scrape Tables
fact_tourism_nepal_15 <- extract_tables(
    file   = "data/19.pdf", 
    method = "decide", 
    output = "data.frame", pages = 15)

write_csv(fact_tourism_nepal_15[[1]], "fact_tourism_15.csv")


fact_tourism_nepal_16 <- extract_tables(
    file   = "data/19.pdf", 
    method = "decide", 
    output = "data.frame", pages = 16)


write_csv(fact_tourism_nepal_16[[1]], "fact_tourism_16.csv")



fact_tourism_nepal_17 <- extract_tables(
    file   = "data/19.pdf", 
    method = "decide", 
    output = "data.frame", pages = 17)


write_csv(fact_tourism_nepal_17[[1]], "fact_tourism_17.csv")


fact_tourism_nepal_17 <- extract_tables(
    file   = "data/19.pdf", 
    method = "decide", 
    output = "data.frame", pages = 108)


write_csv(reg_homestay[[1]], "fact_tourism_17.csv")


library(janitor)
library(dplyr)

X108_homestay <- read_csv("data/108_homestay.csv") %>% clean_names()  %>% filter(type == "Total")

X109_Hotel_and_homestay <- read_csv("data/109_Hotel_and_homestay.csv") %>% clean_names() %>% filter(type == "Total")

reg_homestay_nepal <- bind_rows(X108_homestay, X109_Hotel_and_homestay) %>% select(c(district, affiliated_house_2018, affiliated_room_2018, affiliated_bed_2018)) %>% drop_na() 

write_csv(reg_homestay_nepal, "data/reg_homestay_nepal.csv")





































