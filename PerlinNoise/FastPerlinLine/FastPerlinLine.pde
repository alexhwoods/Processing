// shows a little faster Perlin Line.


void setup() {
  size(1000, 800);
  smooth();
  background(180);
  fill(#333333);
}


float xval;
float xoff = 0.0;

void draw() {
  background(204);
  xoff = xoff + .01;
  float n = noise(xoff) * width;
  line(n, 0, n, height);
}

