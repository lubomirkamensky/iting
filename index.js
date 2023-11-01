const response = await fetch('./iting.json');
const json = await response.json();

window.currentThrow = [];
window.allThrows = [];
window.hexagram = "";
window.prediction1 = "";
window.prediction2 = "";


function tcoins() {
	return Math.floor(Math.random() * (4 - 2) + 2);
}

function arrSum(arr) { 
  let sum = 0;  
  arr.forEach(n => sum += n); 
  return sum; 
}


export function throwCoins() {
  
  window.currentThrow[0] = Math.floor(Math.random() * (3 - 2 + 1)) + 2 ;
  window.currentThrow[1] = tcoins() ;
  window.currentThrow[2] = tcoins() ;

  if (window.allThrows.length < 6) {
    window.allThrows.push(arrSum(window.currentThrow));
  } else {
    window.allThrows = [];
    window.allThrows.push(arrSum(window.currentThrow)); 
  }

  document.getElementById("coin1").src="./images/" + window.currentThrow[0] + ".gif";
  document.getElementById("coin2").src="./images/" + window.currentThrow[1] + ".gif";
  document.getElementById("coin3").src="./images/" + window.currentThrow[2] + ".gif";


  document.getElementById('hex_name').innerHTML = json.Hexagrams["777777"]["name"];
  document.getElementById('hex_id').innerHTML = json.Hexagrams["777777"]["id"];
  document.getElementById('hex_top').innerHTML = json.Hexagrams["777777"]["top"];
  document.getElementById('hex_bottom').innerHTML = json.Hexagrams["777777"]["bottom"];
  document.getElementById('hex_meaning').innerHTML = json.Hexagrams["777777"]["meaning"];
}




