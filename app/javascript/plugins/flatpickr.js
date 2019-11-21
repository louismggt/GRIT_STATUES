import flatpickr from "flatpickr"
import "flatpickr/dist/themes/airbnb.css"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

const newRentalForm = document.getElementById('new_rental')
// const rentals = JSON.parse(newRentalForm.dataset.rentals);

if (newRentalForm) {
  flatpickr("#range_start", {
    plugins: [new rangePlugin({ input: "#range_end"})],
    minDate: "today",
    mode: "range",
    altInput: true,
    allowInput: true,
    dateFormat: "Y-m-d",
    // "disable": rentals,
  })
}
