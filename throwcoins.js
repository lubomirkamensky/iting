import {json} from './hexagram.js';
function throwCoins() {
  document.getElementById('hex_name').innerHTML = json.Hexagrams["777777"]["name"];
  document.getElementById('hex_id').innerHTML = json.Hexagrams["777777"]["id"];
  document.getElementById('hex_top').innerHTML = json.Hexagrams["777777"]["top"];
  document.getElementById('hex_bottom').innerHTML = json.Hexagrams["777777"]["bottom"];
  document.getElementById('hex_meaning').innerHTML = json.Hexagrams["777777"]["meaning"];
}
