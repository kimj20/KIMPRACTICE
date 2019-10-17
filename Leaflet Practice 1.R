library(leaflet)
leaflet()
leaflet() %>% addTiles()
leaflet() %>% setView(lng = -79.442778, lat = 37.783889, zoom = 12) %>% addTiles()
leaflet() %>% 
  setView(lng = -79.442778, lat = 37.783889, zoom = 8) %>% 
  addProviderTiles(provider = providers$NASAGIBS.ViirsEarthAtNight2012)

#good for heat maps and colored maps 
leaflet() %>% 
  setView(lng = -79.442778, lat = 37.783889, zoom = 12) %>% 
  addProviderTiles(providers$CartoDB.Positron)
#web map service:
leaflet() %>% 
  addTiles() %>% 
  setView(lng = -79.442778, lat = 37.783889, zoom = 8) %>%
  addWMSTiles(
    "http://mesonet.agron.iastate.edu/cgi-bin/wms/nexrad/n0r.cgi",
    layers = "nexrad-n0r-900913",
    options = WMSTileOptions(format = "image/png", transparent = TRUE),
    attribution = "Weather data © 2012 IEM Nexrad"
  )
