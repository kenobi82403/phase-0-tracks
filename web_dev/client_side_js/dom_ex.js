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

