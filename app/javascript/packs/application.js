import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import "../plugins/flatpickr"
import "../plugins/price_calculator"
import "../plugins/form_step_by_step"

import { initStarRating } from '../plugins/init_star_rating';
import { initMapbox } from '../plugins/init_mapbox';

initMapbox();
initStarRating();



