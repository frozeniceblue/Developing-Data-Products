## Show the Position
library(leaflet)
set.seed(777)
position=data.frame(lat=runif(10, min=41.77, max=41.88),
                    lng=runif(10, min=-72.33, max=-72.22),
                    col=sample(c("red","blue","yellow"),10,replace=TRUE),
                    stringAsFactors=FALSE)
position%>%
leaflet()%>%
addTiles()%>%
addMarkers(popup=(rep("UCONN",10)),clusterOptions = markerClusterOptions())%>%
addCircleMarkers(color=position$col)%>%
addLegend(labels=LETTERS[1:3],color=c("red","blue","yellow"))

