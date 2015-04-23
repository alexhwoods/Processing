// This came from a tutorial somewhere..I think on Lynda? 
// I don't take credit.

color[] rainbow = {#1A4F7A, #BF2E91, #AE8F73, #B4C752, #D0D995, #2478BE};

void setup() {
  size(600,200);
  smooth();
  noFill();
  strokeWeight(5);
};

void draw() {
  float x = random(width);
  float y = random(height);
  float d = random(5, 100);
  stroke(rainbow[(int(random(6)))]);
  ellipse(x,y,d,d);
};

