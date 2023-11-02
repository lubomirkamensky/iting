const response = await fetch('./iting.json');
const json = await response.json();

window.currentThrow = [];
window.allThrows = [];
window.orderT = ["","První","Druhá","Třetí","Čtvrtá","Pátá","Šestá"];
window.hexalines = ["","","","","","",'<img src="./images/6.gif" width="170" height="33"><br>','<img src="./images/7.gif" width="170" height="17"><br>','<img src="./images/8.gif" width="170" height="21"><br>','<img src="./images/9.gif" width="170" height="33"><br>'];
window.hexagram = "";
window.hexa1 = "";
window.hexa2 = "";
window.prediction1 = "";
window.prediction2 = "";
           

function arrSum(arr) { 
  let sum = 0;  
  arr.forEach(n => sum += n); 
  return sum; 
}


export function throwCoins() {
  
  const randomIntegerInRange = (min, max) => Math.floor(Math.random() * (max - min + 1)) + min;
  window.currentThrow[0] = Math.floor(Math.random() * (3 - 2 + 1)) + 2;
  window.currentThrow[1] = Math.floor(Math.random() * (4 - 2) + 2);
  window.currentThrow[2] = randomIntegerInRange(2,3);

  if (window.allThrows.length < 6) {
    window.allThrows.push(arrSum(window.currentThrow));
  } else {
    window.allThrows = [];
    window.allThrows.push(arrSum(window.currentThrow)); 
  }

  document.getElementById("coin1").src="./images/" + window.currentThrow[0] + ".gif";
  document.getElementById("coin2").src="./images/" + window.currentThrow[1] + ".gif";
  document.getElementById("coin3").src="./images/" + window.currentThrow[2] + ".gif";
 
  window.hexagram = ""

  for (const element of window.allThrows) {
    window.hexagram = window.hexalines[element] + window.hexagram
  }

  window.hexagram = "<swiper-slide><h3><span>" + window.orderT[window.allThrows.length] + " čára hexagramu</span></h3><p>" + window.hexagram + "</p></swiper-slide>"

  document.getElementById('itingbox1').innerHTML = ""
  document.getElementById('itingbox1').insertAdjacentHTML("beforeend", window.hexagram);

  if (window.allThrows.length == 6 && (window.allThrows.includes(6) || window.allThrows.includes(9))) {
  	window.hexa1 = window.allThrows.join("").replace("6", "8").replace("9", "7");
    window.hexa2 = window.allThrows.join("").replace("6", "7").replace("9", "8");
  } else if (window.allThrows.length == 6) {
  	window.hexa1 = window.allThrows.join("");
  }

  document.getElementById('hex_name').innerHTML = json.Hexagrams["777777"]["name"];
  document.getElementById('hex_id').innerHTML = json.Hexagrams["777777"]["id"];
  document.getElementById('hex_top').innerHTML = json.Hexagrams["777777"]["top"];
  document.getElementById('hex_bottom').innerHTML = json.Hexagrams["777777"]["bottom"];
  document.getElementById('hex_meaning').innerHTML = json.Hexagrams["777777"]["meaning"];
}




