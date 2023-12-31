const response = await fetch('/lib/iting.json');
const json = await response.json();

window.currentThrow = [];
window.allThrows = [];
window.orderT = ["", "První", "Druhá", "Třetí", "Čtvrtá", "Pátá", "Šestá"];
window.hexalines = ["", "", "", "", "", "", '<img src="./images/6.gif" width="170" height="33"><br>', '<img src="./images/7.gif" width="170" height="17"><br>', '<img src="./images/8.gif" width="170" height="21"><br>', '<img src="./images/9.gif" width="170" height="33"><br>'];
window.minilines = ["", "", "", "", "", "", "", "/images/mini/7.gif", "/images/mini/8.gif"];
window.hexagram = "";
window.hexa1 = "";
window.hexa2 = "";

function arrSum(arr) {
  let sum = 0;
  arr.forEach(n => sum += n);
  return sum;
}

function makePrediction(hexagram) {
  console.log(hexagram)
  let prediction = '<h3>' + json.Hexagrams[hexagram]["id"] + '. ' + json.Hexagrams[hexagram]["name"] + '</h3>'
  prediction = prediction + '<div>' + json.Hexagrams[hexagram]["meaning"] + '</div><div align="center"><table><tr>'
  prediction = prediction + '<td style="text-align: center; vertical-align: middle; padding: 10px;"><img src="/images/mini/' + hexagram.charAt(2) + '.gif" width="57" height="6"><br><img src="/images/mini/' + hexagram.charAt(1) + '.gif" width="57" height="6"><br><img src="/images/mini/' + hexagram.charAt(0) + '.gif" width="57" height="6"></td>'
  prediction = prediction + '<td style="text-align: center; vertical-align: middle; padding: 10px;">' + json.Hexagrams[hexagram]["bottom"] + '</td>'
  prediction = prediction + '<td style="text-align: center; vertical-align: middle; padding: 10px;"><img src="/images/mini/' + hexagram.charAt(5) + '.gif" width="57" height="6"><br><img src="/images/mini/' + hexagram.charAt(4) + '.gif" width="57" height="6"><br><img src="/images/mini/' + hexagram.charAt(3) + '.gif" width="57" height="6"></td>'
  prediction = prediction + '<td style="text-align: center; vertical-align: middle; padding: 10px;">' + json.Hexagrams[hexagram]["top"] + '</td></tr></table></div>'
  return prediction
}

export function throwCoins() {

  const randomIntegerInRange = (min, max) => Math.floor(Math.random() * (max - min + 1)) + min;
  window.currentThrow[0] = Math.floor(Math.random() * (3 - 2 + 1)) + 2;
  window.currentThrow[1] = Math.floor(Math.random() * (4 - 2) + 2);
  window.currentThrow[2] = randomIntegerInRange(2, 3);

  if (window.allThrows.length < 6) {
    window.allThrows.push(arrSum(window.currentThrow));
  } else {
    window.allThrows = [];
    window.allThrows.push(arrSum(window.currentThrow));
  }

  document.getElementById("coin1").src = "./images/" + window.currentThrow[0] + ".gif";
  document.getElementById("coin2").src = "./images/" + window.currentThrow[1] + ".gif";
  document.getElementById("coin3").src = "./images/" + window.currentThrow[2] + ".gif";

  window.hexagram = ""

  for (const element of window.allThrows) {
    window.hexagram = window.hexalines[element] + window.hexagram
  }

  window.hexagram = "<h3><span>" + window.orderT[window.allThrows.length] + " čára hexagramu</span></h3><p>" + window.hexagram + "</p>"

  document.getElementById('itingbox1').innerHTML = ""
  document.getElementById('itingbox2').innerHTML = ""
  document.getElementById('itingbox1').insertAdjacentHTML("beforeend", window.hexagram);

  window.hexa1 = "";
  window.hexa2 = "";

  if (window.allThrows.length == 6 && (window.allThrows.includes(6) || window.allThrows.includes(9))) {
    console.log(window.allThrows)
    console.log('identified 6 or 9')
    window.hexa1 = window.allThrows.join("").replaceAll("6", "8").replaceAll("9", "7");
    window.hexa2 = window.allThrows.join("").replaceAll("6", "7").replaceAll("9", "8");
  } else if (window.allThrows.length == 6) {
    console.log(window.allThrows)
    console.log('not identified 6 or 9')
    window.hexa1 = window.allThrows.join("");
  }

  if (window.hexa1 != "" && window.hexa2 != "") {
    document.getElementById('itingbox1').innerHTML = ""
    document.getElementById('itingbox1').insertAdjacentHTML("beforeend", makePrediction(window.hexa1));
    document.getElementById('itingbox2').innerHTML = ""
    document.getElementById('itingbox2').insertAdjacentHTML("beforeend", makePrediction(window.hexa2));
  }

  if (window.hexa1 != "" && window.hexa2 == "") {
    document.getElementById('itingbox2').innerHTML = ""
    document.getElementById('itingbox2').insertAdjacentHTML("beforeend", makePrediction(window.hexa1));
  }

  window.scrollTo(0, 0);
}

















