function myDate(element) {
  var lis = document.querySelectorAll("days li");
  //for (var i = 0; i < lis.length; i++) {
  //  lis[i].classList.remove("selected");
  //}
  if (element.classList.contains("selected")) {
    element.classList.remove("selected");
  } else {
    var selectedLi = document.querySelector(".selected");
    if (selectedLi) {
      selectedLi.classList.remove("selected");
    }
    element.classList.add("selected");
  }
}
