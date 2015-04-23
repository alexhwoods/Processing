
//odd = lime, teal, blue, pink, orange
color[] odd = {#ADDE08,#00885D,#0D1CD9,#F502A3,#E57309};
color[] palette = odd;

int x = 0;
int i = 0;
boolean typed = false;

void setup() {
  size(600, 400);
  smooth();
  noStroke();
}

void draw() {
  
  background(180);
  fill(palette[i]);
  ellipse(width/2, height/2, 100, 100);
}

//void keyPressed() {
//  if (key == 'l') i = 0;
//  else if (key == 't') i = 1;
//  else if (key == 'b') i = 2;
//  else if (key == 'p') i = 3;
//  else if (key == 'o') i = 4;
//}


void keyPressed() {
  if (keyCode == ENTER) i = int(random(1,5));
  println(i);
}

