//pr1 = red, blue, lightblue, white, orange
color[] pr1 = {#024059,#F7F9FE, #FEBA00};
color[] sunBob = {#E87D00,#FFA500,#FF6700,#E84407,#FF2300};
color[] center = {#FEBA00, #FFFFFF,#FF2300};
color[] palette = sunBob;

float x, y, z;
float radiusCircle = 60;
int strokeNum;
float angle = 0; 
float angleNeg = 2*PI;
int count = 0;
int countNeg = 2;
float inc = 0;
boolean pressed = false;
int press1 = 1;

//setup stuff
void setup() {
  size(1500, 1000, P3D);
 //so (0,0) is at the center
  smooth();
  background(0);
//stroke(palette[1]);
  strokeWeight(10);
  frameRate(60);
}


