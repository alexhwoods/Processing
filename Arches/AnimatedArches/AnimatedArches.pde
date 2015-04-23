color[] atlas = {#59AEE1, #7A102D, #1581C4, #C6B32E, #1581C4, #7A102D, #59AEE1};

void setup() {
  size(800,525);
  smooth();
  background(180);
  //overall Layout A B C D E F G H
  //strokeWeight(2);
  noFill();
};

void draw() {
  stroke(atlas[int(random(7))]);
  strokeWeight(2);
  int x = int(random(1, 14));
  int y = int(random(1, 8));
  int x2 = 50*x + 50;
  int y2 = 100*y;
  arc(x2, 450, y2, 750, PI, 2*PI);
  
  stroke(#FFFFFF);              
  strokeWeight(14);
  for (int i = 50; i <= 800; i = i + 50) {      //0 - 800 increment by 50
    point(0, 450);
    point(i, 450);
  }
};


