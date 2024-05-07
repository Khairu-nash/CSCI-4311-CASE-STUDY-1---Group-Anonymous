class SelectedDay {
  void myDate(Element element) {
    List<Element> lis = document.querySelectorAll("days li");
    // for (var i = 0; i < lis.length; i++) {
    //   lis[i].classList.remove("selected");
    // }
    if (element.classList.contains("selected")) {
      element.classes.remove("selected");
    } else {
      Element selectedLi = document.querySelector(".selected");
      if (selectedLi != null) {
        selectedLi.classes.remove("selected");
      }
      element.classes.add("selected");
    }
  }
}
