//makes a circle smaller, with a noise function. Very similar to rain-static

void setup() {
  size(1400, 1000);
  smooth();
  background(180);
  fill(#003300);
  //frameRate(45);
}
float hw = 0.0;
float x = 0.0;
float y = 0.0;
void draw() {
  background(180);
  hw = hw + 0.01;
  float rhw = noise(hw) * width;
  ellipse(700, 500, rhw, rhw);
  for (int i = 0; i < 1000; i++) {
    x = i / 1000;
    x = noise(i) * width;
    y = i / 1000;
    y = random(1) * height;
    point(x, y); 
  }
}

