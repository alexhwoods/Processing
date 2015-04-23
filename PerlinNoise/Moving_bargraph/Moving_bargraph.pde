// shows 3 bargraphs moving, each to a different "function".
// one is to the fibonacci numbers, another is a sin function,
// and the last is a noise function.


//color = 0peachOrange, 1salesBlue, 2lightGray, 3lightBlack
color[] salesForce = {#DC5E4B, #59C0E1, #9BA6B9, #261C1A};

void setup() {
  size(500, 400);
  smooth();
  background(salesForce[2]);
  frameRate(40);
}

//initializing time
float height1 = 300;
float height2 = 200;
float height3 = 100;
float onlyX = 75;
float fx1, fx2, fx3;
float x = 0.0;                        //all fx's will be based on the constantly increasing value x

//think—what equation do I want to represent each fx?
//fx1 can be sinx + (width / 3)
//fx2 can be a a noise function
//fx3 can increase than decrease by the fibonacci numbers, or a factor of them at least

int[] fibonacci = {0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,233,144,89,55,34,21,13,8,5,3,2,1,1,0};
int i = 0;
int g = 0;
void draw() {
  
  background(salesForce[2]);
  fx1 = 200*sin(x) + 275;
  fx2 = noise((0.4*x)) * (width - onlyX) + onlyX;
  if (g >= 27) g = 0;
  fx3 = fibonacci[g] + onlyX;
  i = i + 1; 
  if (i % 5 == 0) g = g + 1;
  x = x + 0.0625;
  strokeWeight(20);
  
  //line1
  stroke(salesForce[0]);
  line(onlyX, height2, fx1, height2);           //decided to switch placement of line1 and line2, so each uses the other's heights
  
  //line2
  stroke(salesForce[1]);
  line(onlyX, height1, fx2, height1);
  
  //line3
  stroke(salesForce[3]);
  line(onlyX, height3, fx3, height3);
}

