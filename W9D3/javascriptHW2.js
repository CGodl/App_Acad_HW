// const printCallBack = (name) => {
//   return (`Mx. ${name} Jingleheimer Schmidt`);
// };

function titleize(array, callback) {
  let answer = array.map(ele => callback(ele));
  return answer;
}


console.log(titleize(["Mary", "Brian", "Leo"], printCallback));


////////////////////////////////////////////////

function Elephant(name, height, ...tricks) {
  this.name = name
  this.height = height
  this.tricks = tricks
}


Elephant.prototype.trumpet = function() {
  console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!`);
};

Elephant.prototype.grow  = function() {
  this.height += 12;
  console.log(this.height);
};

Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick);
  console.log(this.tricks);
};

Elephant.prototype.play = function() {
  let randomTrickNum = this.tricks[Math.floor(Math.random() * this.tricks.length)]; //Selects random element, not index #
  console.log(`${this.name} is ${randomTrickNum}!`);
};


///////////////////////////////////////

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

// Array.prototype.myEach = function

function paradeHelper(name) {
  console.log(`${name} is trotting by!`);
};