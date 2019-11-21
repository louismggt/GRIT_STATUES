function price()
{
        start = document.getElementById("start_date").value;
        end = document.getElementById("end_date").value;
        price = document.getElementById("end_date").value;
        document.getElementById("result").innerHTML = end - start;
}
