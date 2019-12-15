### Mapping module

### required Library
source('script/package.R')

province_map <- topojson_read("data/map/gis-data/province.topojson")

district_map <- topojson_read("data/map/gis-data/District.topojson")


create_map <- function(df_address,column1,column2, bins = 
                         c(0,1000000, 2000000, 3000000, 4000000,5000000,6000000, Inf))
{
  main_df <- read_csv(df_address)
  
  
  new_data <- geo_join(district_map, main_df,'district','district')
  #popup_00 <- paste0("<strong>",new_data$state,"</strong>","</br>", "Household: ",new_data$household)
  bins <- bins
  pal <- colorBin("Green", domain = new_data[[column2]], bins = bins)
  
  # labels <- sprintf("<strong>%s</strong><br/> House: %g", new_data$district,  new_data$affiliated_house_2018
  # ) %>% lapply(htmltools::HTML)
  
  label2 <- as.list(paste0("<strong>",new_data$district,"</strong>","<br/>House: ",new_data[[column1]],"<br/> Bed:",new_data[[column2]]) %>% lapply(htmltools::HTML))
  ### new cloropeth map
  new_map <- leaflet(new_data) %>%
    setView(84.1240,28.3949,6) %>%
    addProviderTiles("Esri.WorldGrayCanvas", options = leafletOptions(minZoom = 6,maxZoom = 9))
  
  new_map %>% addPolygons(data = new_data,
                          fillColor = ~pal(new_data[[column2]]) ,
                          fillOpacity = 0.7,
                          opacity = 1,
                          weight = 2,
                          color = "white",
                          dashArray = "0.5",
                          smoothFactor = 0.5,
                          label  = label2,
                          labelOptions = labelOptions(
                            style = list("font-weight" = "normal", padding = "3px 8px"),
                            textsize = "15px",
                            direction = "auto")
  )
}
