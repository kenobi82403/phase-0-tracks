var fourColors = ["blue", "purple", "pink", "yellow"];

var fourNames = ["Ed", "Nanu", "Max", "Ken"];

fourColors.push("black");
fourNames.push("Ollie");

// Release 1

var horses = {};

for(var i = 0; i < fourColors.length; i++) {
  horses[fourNames[i]] = fourColors[i];
};

console.log(horses);

// Release 2

function Cars(brand, type, color, speed) {
  this.brand = brand;
  this.type = type;
  this.color = color;
  this.maxSpeed = speed;
  this.acceleration = function() {
    if(this.maxSpeed > 100) {
      console.log('Keep going!');
    } else {
      console.log('Need more power!');
    }
  };
}

var bmw = new Cars('bmw', 'xi', 'beige', '101');
console.log(
  bmw.brand,
  bmw.type,
  bmw.color,
  bmw.maxSpeed
  );

  bmw.acceleration();







