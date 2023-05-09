import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue
    this.map = new mapboxgl.Map({
    container: this.element, // container ID
    style: 'mapbox://styles/mapbox/streets-v12', // style URL
    center: [13.378690871250333, 52.51635135], // starting position [lng, lat]
    zoom: 9, // starting zoom
    });
    // Create a new marker, set the longitude and latitude, and add it to the map.
    this.#AddMarkersToMap()
  }

  #AddMarkersToMap(){
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window)
      new mapboxgl.Marker()
      .setLngLat([marker.lng, marker.lat])
      .setPopup(popup)
      .addTo(this.map);
    })
  }
}
