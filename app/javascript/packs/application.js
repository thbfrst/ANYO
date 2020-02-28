import "bootstrap";
// app/javascript/packs/application.js
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/map';

initMapbox();

let minutesInput = document.querySelector('input[name="order_item[minutes]"]')

if (minutesInput){
  minutesInput.addEventListener('change', (e) => {
    let pickUpTime = new Date(new Date().getTime() + Number(e.target.value)*60000)
    console.log(pickUpTime)
    let displayEl = document.querySelector(".pick-up-time")
    let innerText = "You should pick your candy at: "
    displayEl.innerText = innerText + pickUpTime.getHours() + ":" + pickUpTime.getMinutes()
  })
}
