$('.red').on('click', function(){
  $('p').toggleClass('red_border');
});


$('.green').on('click', function(){
  $('p').toggleClass('green_border');
});


// bacon
$('span').on('click', function(){
  $('img').slideToggle('slow').toggleClass('red_border');
});

$("h1").animate(
{
  left: "+=50",
  opacity: 0.35
},

1000,

function(){
  $("h1").html("Click the pig for Bacon Goodness!!");
}
);