// This file shows the idea of the circle of Apollonius. 
// Press Enter to change the size of the circle.



color[] palette = {#97B8DB, #0475C1, #F18803, #D9D9D9, #0C0D0E};


void setup() {
  size(1200, 800);
  smooth();
  background(210);
  stroke(0);
  noFill();
  

  

}


//the X and Y coordinates for points A, B, and M
float mX = 480;
float nX = 720;
float aX, aY, bX, bY, mY, pY, aRadius, a2Y, bRadius, b2Y, nY, p2X;
double top, bottom, slope, top2, bottom2, slope2;
float pX;
int pressed = 1;



//I need to figure out how to make 
//all these variables responsive to change...
//maybe I should do the math in the draw method..

void draw() {
  background(palette[3]);
  
  
  //becauseMath
  aX = 400;
  aY = 400;
  bX = 800;
  bY = aY;
  mY = aY;
  pY = aY;
  aRadius = mX - aX;
  a2Y = aY - aRadius;
  bRadius = bX-mX;
  b2Y = bY - bRadius; 
  top = (double)(b2Y - a2Y);
  bottom = (double)(bX-aX);
  slope = top / bottom;
  top2 = (double)(a2Y-b2Y);
  bottom2 = (double)(aX-bX);
  slope2 = top2 / bottom2;
  pX = (float)((pY - b2Y)/slope) + bX;
  p2X = (float)((pY - a2Y)/slope2) + aX;
  
  if (pressed % 2 == 0) {
    mX += 1;                              //moving mX looks awesome
    nX -= 1;
  }
  
  
  
  

  

  //draw a line from A to B
  stroke(palette[4]);
  strokeWeight(3);
//  line(0, aY, width, bY);
  
  //now I need to draw the circles with centers A and B, and
  //radii A-M, B-M
//  stroke(palette[4]);
//  strokeWeight(3);
//  ellipse(aX, aY, 2*(mX-aX), 2*(mX-aX));
//  ellipse(bX, bY, 2*(bX-mX), 2*(bX-mX));
//  ellipse(aX, aY, 2*(nX-aX), 2*(nX-aX));
//  ellipse(bX, bY, 2*(bX-nX), 2*(bX-nX));
  

  
  //drawing the three points
  strokeWeight(10);
  stroke(palette[1]);
  point(aX, aY);
  point(bX, bY);
//  point(mX, mY);
//  point(bX, b2Y);
//  point(aX, a2Y);
//  point(pX, pY);
  
  
  if (mX > aX && mX < bX) {
    //now for the actual Circle of Apollonius
    stroke(palette[2]);
    strokeWeight(1);
    ellipse((pX+aX)/2, pY, mX-pX, mX-pX);
//    ellipse((p2X+bX)/2, pY, nX-p2X, nX-p2X);
    stroke(palette[1]);
//    line(bX, b2Y, pX, pY);
    
    //redrawing points and stuff
//    stroke(palette[0]);
//    strokeWeight(10);
//    point((pX+aX)/2, pY);
//    stroke(palette[1]);
//    point(aX, a2Y);
//    point(pX, pY);
//    point(nX, mY);
    //line(aX, a2Y, p2X, pY);
  }
  
  
  
  
   
  
}

