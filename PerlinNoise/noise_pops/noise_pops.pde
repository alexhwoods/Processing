void setup() {
  size(1000, 800);
  smooth();
  background(180);
}

float x = 0.0;
float y = 0.0;
float z = 0.0;
float u = 0.0;

void draw() {
  x = x + 0.01;
  y = y + 0.01;
  x = noise(x) * width;
  y = noise(y) * height;
  background(180);
  fill(#333333);
  ellipse(x, y, 200, 200);
  
  //for lines
  z = x + (width - (x/4));
  u = y + (height - (y/4));
  line(x, 800, x, y); 
  
}
