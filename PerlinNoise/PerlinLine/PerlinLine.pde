// shows a line moving about to a Perlin Noise function.


void setup() {
  size(1000, 800);
  smooth();
  background(180);
  fill(#333333);
}


float xval;
//ellipse(100, 100, 150, 150);

void draw () {
 background(180);
 xval = xval + .01;
 float  n = noise(xval);
 System.out.println(n);
 
 n = n * width;
 line(n, 0, n, height);
}


