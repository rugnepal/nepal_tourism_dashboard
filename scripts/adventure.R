# Adventure  Data

National_park_df <- read_excel("data/61. NUMBER OF FOREIGN VISITORS TO NATIONAL PARKS _ CONSERVATION AREAS, 2070_71- 074_75.xlsx", 
                               col_types = c("text", "numeric", "numeric", 
                                             "numeric", "numeric", "numeric")) %>% clean_names()
names(National_park_df) <- c("protected_area","2070_71","2071_72","2072_73","2073_74","2074_75")

national_park_arrange_df <- arrange(National_park_df,-`2074_75`)

National_park_df<- head(national_park_arrange_df,5)%>% pivot_longer(-protected_area,names_to = "fiscal_year",values_to = "count")



National_park_df_chart <- hchart(National_park_df, "line", hcaes(x = fiscal_year, y = count, group = protected_area))


# Treking Charts
trek_df <- read_excel("data/58. NUMBER OF TREKKERS IN DIFFERENT TREKKING AREA, 2001-2018..xlsx", 
           col_types = c("numeric", "numeric", "numeric", 
                         "numeric", "numeric", "numeric", 
                         "numeric", "numeric", "numeric", 
                         "numeric", "numeric")) %>% clean_names()


new_trek_df <- trek_df%>% select(-t_valley,-narphu,-others,-total)%>%tail(5)%>%pivot_longer(-year,names_to = "trekking_route",values_to = "count")

trek_df_chart <- hchart(new_trek_df, "line", hcaes(x = year, y = count, group = trekking_route))


trek_df_chart
