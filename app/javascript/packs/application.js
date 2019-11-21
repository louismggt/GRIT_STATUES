import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import "../plugins/flatpickr"
import "../plugins/price_calculator"

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();
