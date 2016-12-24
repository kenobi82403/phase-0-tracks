function redBorder(){
    para.forEach(function(e){
      e.classList.toggle('red_border');
    });
}

function greenBorder(){
    para.forEach(function(e){
      e.classList.toggle('green_border');
    });
}

var redButton = document.querySelector('button.red'),
    para = document.querySelectorAll('p'),
    greenButton = document.querySelector('button.green');

redButton.addEventListener('click', redBorder);
greenButton.addEventListener('click', greenBorder);

// bacon

var bacon = document.querySelectorAll('span');

function addBacon(e){
  document.querySelector('img').classList.toggle('bacon');
}

bacon.forEach(function(b){
  b.addEventListener('click', addBacon);
});