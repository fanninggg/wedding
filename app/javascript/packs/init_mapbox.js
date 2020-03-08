import mapboxgl from 'mapbox-gl';

const fitMapToMarkers = (map, marker) => {
  const bounds = new mapboxgl.LngLatBounds();
  bounds.extend([ -7.093089, 53.834758 ])
  map.fitBounds(bounds, { padding: 70, maxZoom: 13, duration: 0 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/light-v10'
    });
    const marker = new mapboxgl.Marker()
      .setLngLat([ -7.093089, 53.834758 ])
      .addTo(map);
    fitMapToMarkers(map, marker);
    map.addControl(new mapboxgl.NavigationControl());
  }
};

export { initMapbox };
