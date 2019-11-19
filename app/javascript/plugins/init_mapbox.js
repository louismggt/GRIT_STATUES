import mapboxgl from 'mapbox-gl';

const mapElement = document.getElementById('map');

const buildMap = (marker) => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/light-v10',
    center: [marker.lng, marker.lat],
    zoom: 9
  });
};

const addMarkersToMap = (map, marker) => {
    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .addTo(map);
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, minZoom: 15 });
};

const initMapbox = () => {
  if (mapElement) {
    const markers = JSON.parse(mapElement.dataset.markers);
    const map = buildMap(markers);
    addMarkersToMap(map, markers);
    // fitMapToMarkers(map, markers);
  }
};

export { initMapbox };

