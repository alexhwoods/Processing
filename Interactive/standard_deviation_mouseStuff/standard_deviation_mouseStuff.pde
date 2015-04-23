/*
// germany = 0black, 1lightBlue, 2darkBlue, 3yellow, 4red
color[] germany = {#000100,#016DA6,#049DBF,#F2C438,#D91E1E};

int wide = 800;
int high = 500;

float x1 = random(wide);
float y1 = random(high);
float easing1 = .09;

float x2 = random(wide);
float y2 = random(high);
float easing2 = .05;

void setup() {
  size(wide, high);
  smooth();
  background(180);
  noCursor();
}

void draw() {
  background(180);
  fill(germany[3]);
  noStroke();
  ellipse(mouseX, mouseY, 18, 18);
  
  //smaller follower
  strokeWeight(5);
  stroke(germany[1]);
  noFill();
  ellipse(x1, y1, 25, 25);
  x1 += (mouseX - x1)*easing1;
  y1 += (mouseY - y1)*easing1;
  
  //larger follower
  stroke(germany[1]);
  noFill();
  ellipse(x2, y2, 32, 32);
  x2 += (mouseX - x2)*easing2;
  y2 += (mouseY - y2)*easing2;
  
  
  
}
*/
