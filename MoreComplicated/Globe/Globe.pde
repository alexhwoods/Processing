int ptsW, ptsH;

PImage img;

int numPointsW;
int numPointsH_2pi; 
int numPointsH;

float[] coorX;
float[] coorY;
float[] coorZ;
float[] multXZ;

void setup() {
  size(1000, 800, P3D);
  background(0);
  noStroke();
  img=loadImage("mercator.jpg");
  // Parameters below are the number of vertices around the width and height
  initializeSphere(200, 200);
}



void draw() {
  translate(width/2, height/2, 0);
  background(0);
  rotateX(-mouseY*0.05);
  rotateY(mouseX*0.05);
  //pushMatrix();
  textureSphere(200, 200, 200, img);           //2048 1588
  //popMatrix();
}




