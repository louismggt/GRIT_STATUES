import flatpickr from "flatpickr"
import "flatpickr/dist/themes/airbnb.css"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

const newRentalForm = document.getElementById('new_rental')

if (newRentalForm) {
  const rentals = JSON.parse(newRentalForm.dataset.rentals);
  console.log(rentals)
  flatpickr("#range_start", {
    plugins: [new rangePlugin({ input: "#range_end"})],
    minDate: "today",
    mode: "range",
    allowInput: true,
    dateFormat: "Y-m-d",
    "disable": rentals,
  })
}
