const priceUpdate = document.getElementById("range_start");

console.log("toto")

priceUpdate.addEventListener("change", event => {
    const startDate = document.getElementById("range_start").value;
    const endDate = document.getElementById("range_end").value;
    const pricePerDay = document.getElementById("price").dataset.price;
    console.log("startDate:", startDate);
    console.log("endDate:", endDate);
    console.log("pricePerDay:", pricePerDay);

    document.getElementById("result").innerHTML = ((Date.parse(endDate) - Date.parse(startDate)) * pricePerDay) / 86400000 ;
  }
)
