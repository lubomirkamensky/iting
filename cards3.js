var activeElem = 0;
window.onresize = resize;
function resize() {
  setTimeout(function () {
    makeCardsResponsive();
  }, 500);
}

document.addEventListener("DOMContentLoaded", function (event) {
  setTimeout(function () {
    makeCardsResponsive();
  }, 500);

  // Make the DIV element draggable:
  dragElement(document.querySelector(".modal__inner-wrap"));
});

function dragElement(elmnt) {
  var pos1 = 0,
    pos2 = 0;
  elmnt.onmousedown = dragMouseDown;
  elmnt.addEventListener("touchstart", function () {
    touchDown();
  });

  function dragMouseDown(e) {
    elmnt.style.transition = "left 0s 0s ease-in-out";
    e = e || window.event;
    e.preventDefault();
    // get the mouse cursor position at startup:
    pos2 = e.clientX;
    elmnt.dataset.left = elmnt.style.left;

    document.onmouseup = closeDragElement;
    // call a function whenever the cursor moves:
    document.onmousemove = elementDrag;
  }

  function elementDrag(e) {
    e = e || window.event;
    e.preventDefault();
    // calculate the new cursor position:
    pos1 = pos2 - e.clientX;
    pos2 = e.clientX;

    // set the element's new position:
    elmnt.style.left = elmnt.offsetLeft - pos1 + "px";
  }

  function touchDown(e) {
    elmnt.style.transition = "left 0s 0s ease-in-out";
    e = e || window.event;
    e.preventDefault();
    // get the mouse cursor position at startup:
    pos2 = e.touches[0].clientX;
    elmnt.dataset.left = elmnt.style.left;
    elmnt.addEventListener("touchend", function () {
      closeDragElement();
    });
    elmnt.addEventListener("touchmove", function () {
      touchDrag();
    });
  }

  function touchDrag(e) {
    e = e || window.event;
    e.preventDefault();
    // calculate the new cursor position:
    pos1 = pos2 - e.touches[0].clientX;
    pos2 = e.touches[0].clientX;

    // set the element's new position:
    elmnt.style.left = elmnt.offsetLeft - pos1 + "px";
  }

  function closeDragElement() {
    elmnt.style.transition = "left .3s ease-in-out";
    // stop moving when mouse button is released:
    var xDiff =
      parseInt(elmnt.dataset.left.slice(0, -2)) -
      parseInt(elmnt.style.left.slice(0, -2));
    if (xDiff > 0) {
      var maxRight =
        parseInt(elmnt.clientWidth) *
        (document.querySelectorAll(".modal").length - 1) *
        -1;
      if (parseInt(elmnt.style.left.slice(0, -2)) < maxRight) {
        elmnt.style.left = elmnt.dataset.left;
      } else {
        goRight(document.querySelector(".modal__inner-wrap"));
      }
    } else if (xDiff < 0) {
      if (parseInt(elmnt.style.left.slice(0, -2)) > 0) {
        elmnt.style.left = "0px";
      } else {
        goLeft(document.querySelector(".modal__inner-wrap"));
      }
    }
    // stop moving when mouse button is released:
    document.onmouseup = null;
    document.onmousemove = null;
  }
}

function goLeft(elmnts) {
  elmnts.style.left =
    parseInt(elmnts.dataset.left.slice(0, -2)) +
    parseInt(elmnts.clientWidth) +
    "px";
  document.querySelector(".active").classList.remove("active");
  activeElem = parseInt(
    (parseInt(elmnts.style.left) / parseInt(elmnts.clientWidth)) * -1
  );
  document.querySelectorAll(".modal")[activeElem].classList.add("active");
}

function goRight(elmnts) {
  elmnts.style.left =
    parseInt(elmnts.dataset.left.slice(0, -2)) -
    parseInt(elmnts.clientWidth) +
    "px";
  document.querySelector(".active").classList.remove("active");
  activeElem = parseInt(
    (parseInt(elmnts.style.left) / parseInt(elmnts.clientWidth)) * -1
  );
  document.querySelectorAll(".modal")[activeElem].classList.add("active");
}

function makeCardsResponsive() {
  let elem = document.querySelector(".modal__inner-wrap");
  elem.style.left = "0px";

  document.querySelector(".active").classList.remove("active");
  activeElem = parseInt(
    (parseInt(elem.style.left) / parseInt(elem.clientWidth)) * -1
  );
  document.querySelectorAll(".modal")[0].classList.add("active");

  document.querySelector(".modal-wrap").style.height =
    parseFloat(document.querySelector(".modal").clientHeight) + 40 + "px";
  document.querySelector(".modal-wrap").style.width =
    parseFloat(document.querySelector(".modal").clientWidth) + 40 + "px";
}
