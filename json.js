const response = await fetch('./iting.json');
const json = await response.json();

document.getElementById('main').innerHTML = json["777777"]["name"];
