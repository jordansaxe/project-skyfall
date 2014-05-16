# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# initialize the map on the 'map' div 
# with the given map ID, center, and zoom
map = L.mapbox.map('map', 'jordansaxe.i8jnb7f9').setView([45.52086, -122.679523], 14)

# get JSON object
# on success, parse it and 
# hand it over to MapBox for mapping 
$.ajax
  dataType: 'text'
  url: 'trips/happening_now.json'
  success: (data) ->
    geojson = $.parseJSON(data)
    map.featureLayer.setGeoJSON(geojson)