const formNewStatue = document.getElementById('new_statue');

if (formNewStatue) {
  const changeTabNext = (event) => {
    const tab = document.querySelector(".active");
      // if (tab.nextElementSibling) {
      tab.classList.add('d-none');
      tab.classList.remove('active');
      tab.nextElementSibling.classList.remove('d-none');
      tab.nextElementSibling.classList.add('active');
      console.log(tab.nextElementSibling)
      console.log(tab)

    if (tab.classList.contains("step-before-last")) {
      const buttons = document.getElementById('buttons')
      buttons.classList.add('d-none');
    }

  };
  const changeTabPrev = (event) => {
    const tab = document.querySelector(".active");
    tab.classList.add('d-none');
    tab.classList.remove('active');
    tab.previousElementSibling.classList.remove('d-none');
    tab.previousElementSibling.classList.add('active');

    if (tab.classList.contains("second")) {
    const previousBtn = document.getElementById("prev-btn")
    previousBtn.classList.add('d-none');
    }
  };

  const getClicks = () => {
    const next = document.getElementById('next-btn');
    const previous = document.getElementById('prev-btn');
    next.addEventListener("click", event => {
      if (previous.classList.contains('d-none')) previous.classList.remove('d-none')
      changeTabNext();
    });
    previous.addEventListener("click", event => {
      changeTabPrev();
      console.log("Je click sur suivant")
    });


  };

  getClicks();

}
