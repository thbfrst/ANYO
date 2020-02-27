import mapboxgl from 'mapbox-gl';


// const initMapbox = () => {
//   const mapElement = document.getElementById('map');

//   if (mapElement) { // only build a map if there's a div#map to inject into

// mapboxgl.accessToken = 'pk.eyJ1IjoicmpvbiIsImEiOiJjazczNGZsNDYwOGhyM21xb25uaDFiYmp5In0.Y5FruBsSO630osvs4IXM0Q';

// const map = new mapboxgl.Map({
//   container: 'map',
//   style: 'mapbox://styles/mapbox/light-v10',
//   center: [-77.034084, 38.909671],
//   zoom: 14
// });
//  const markers = JSON.parse(mapElement.dataset.markers);
//   markers.forEach((marker) => {
//     new mapboxgl.Marker()
//       .setLngLat([ marker.lng, marker.lat ])
//       .addTo(map);
//   });
// }
// };

// export { initMapbox };

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 40, duration: 0 });
};

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = 'pk.eyJ1IjoicmpvbiIsImEiOiJjazczNGZsNDYwOGhyM21xb25uaDFiYmp5In0.Y5FruBsSO630osvs4IXM0Q';

    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });


    const markers = JSON.parse(mapElement.dataset.markers);
 markers.forEach((marker) => {
    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .addTo(map);
  });
}
};

export { initMapbox };

