const priceUpdate = document.getElementById("range_start");
const element = document.getElementById("result")

if (priceUpdate) {
  priceUpdate.addEventListener("change", event => {
      const startDate = document.getElementById("range_start").value;
      const endDate = document.getElementById("range_end").value;
      const pricePerDay = document.getElementById("price").dataset.price;
      console.log("startDate:", startDate);
      console.log("endDate:", endDate);
      console.log("pricePerDay:", pricePerDay);

      const price = ((Date.parse(endDate) - Date.parse(startDate)) * pricePerDay) / 86400000;
      element.innerHTML = price;

      if (!isNaN(price)) {
        const totalPrice = document.getElementById('total-price')
        totalPrice.classList.remove("d-none");
      }
    }
  )
}
