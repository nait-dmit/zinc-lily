mapOptions =
  apikey: "0b1a6062d8c54126a8a5d74bb8f6d503"
  lng: -113.49990
  lat: 53.56908
  style: "32201"
  zoom: 15
  markers:
    nexenTheater:
      lng: -113.49990
      lat: 53.56823
    parking1:
      lng: -113.50072
      lat: 53.56907
    parking2:
      lng: -113.50082
      lat: 53.56781
  polygons:
    parking1: [
        [53.56899, -113.50165],
        [53.56954, -113.50034],
        [53.56916, -113.49985],
        [53.56862, -113.50115]
      ]
    parking2: [
        [53.56766,-113.50135],
        [53.56805,-113.50042],
        [53.56787,-113.50037],
        [53.56753,-113.50119]
      ]


map = L.map 'map'
map.setView [mapOptions.lat, mapOptions.lng], mapOptions.zoom

tiles = L.tileLayer "http://{s}.tile.cloudmade.com/#{ mapOptions.apikey }/#{ mapOptions.style }/256/{z}/{x}/{y}.png",
  attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://cloudmade.com">CloudMade</a>',
  maxZoom: 18


nexenTheater = L.marker [mapOptions.markers.nexenTheater.lat, mapOptions.markers.nexenTheater.lng]
nexenTheater.bindPopup "<h1>Nexen Theater</h1><p>Spartan/Petro-Canada Centre<br/>NAIT Main Campus<br/>Princess Elizabeth Ave<br/>Edmonton, AB, Canada<br/></p><p><a target='_blank' href='http://goo.gl/maps/UK4vt'>View in Google Maps</a></p>"
nexenTheater.openPopup()

parking1Marker = L.marker [mapOptions.markers.parking1.lat, mapOptions.markers.parking1.lng],
  icon:
    new L.Icon.Default
      iconSize: [12, 20],
      iconAnchor: [6, 20],
      shadowSize: [20, 20],
      shadowAnchor: [6, 20]

parking1Marker.bindPopup "<h1>Parking: U-Lot</h1>"
parking1Marker.openPopup()

parking2Marker = L.marker [mapOptions.markers.parking2.lat, mapOptions.markers.parking2.lng],
  icon:
    new L.Icon.Default
      iconSize: [12, 20],
      iconAnchor: [6, 20],
      shadowSize: [20, 20],
      shadowAnchor: [6, 20]

parking2Marker.bindPopup "<h1>Parking: Hourly Lot</h1>"
parking2Marker.openPopup()


parking1 =  L.polygon mapOptions.polygons.parking1,
  color: '#26C5CE'
  weight: 2

parking2 =  L.polygon mapOptions.polygons.parking2,
  color: '#26C5CE'
  weight: 2


tiles.addTo map
nexenTheater.addTo map
parking1Marker.addTo map
parking2Marker.addTo map
parking1.addTo map
parking2.addTo map
