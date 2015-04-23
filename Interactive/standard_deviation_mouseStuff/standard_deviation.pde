/* The goal of this program is to make a lowercase sigma,
*  but have it be deconstructed when the user moves the mouse.
*/ 


//statistics = red, rocketBlue, cream, brown, sherbertPink
color[] statistics = {#E80C15,#8FBFBF,#FFEDB8,#572A17,#C36B4F};

int wide = 800;
int high = 500;

float x1 = random(wide);
float y1 = random(high);
float easing1 = .09;

float x2 = random(wide);
float y2 = random(high);
float easing2 = .05;

float x3;
float y3;

void setup() {
  size(wide, high);
  smooth();
  background(statistics[2]);          //cream
  noCursor();
}

void draw() {
  background(statistics[2]);
  //center ellipse, also cursor
  noStroke();
  fill(statistics[0]);                //red
  ellipse(mouseX, mouseY, 25, 30);
  
  //follow ellipse1
  strokeWeight(4);
  noFill();
  stroke(statistics[1]);
  ellipse(x1, y1, 28, 33);
  x1 += (mouseX - x1)*easing1;
  y1 += (mouseY - y1)*easing1;
  
  //follow ellipse2
  ellipse(x2, y2, 30, 35);
  
  //we need a little line too to make it a lowercase sigma!
  strokeCap(PROJECT);
  //curve((x2+5),(y3-2), x3,y3, (x3-10),y3, (x3+5),(y3-2));
  line(x3,y3, (x3-17.5),y3);
  x2 += (mouseX - x2)*easing2;
  y2 += (mouseY - y2)*easing2;
  x3 = (x2 + (30/2) + 6);
  y3 = (y2 - (33/2) - 1);
  
}

