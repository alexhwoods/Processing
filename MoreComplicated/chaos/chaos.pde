//Chaos
//also show wh = 20, numEll = 300

boolean pressed = false;
color[] honeyPot = {#105B63,#FFFAD5,#FFD34E,#DB9E36,#BD4932};
color[] palette = honeyPot;
float radius = 0;
int wh = 50;
float k = 0;                      //rotation constant
float[] radii = {};               //random values generated, so each point has a random radius
float[] radii0 = {};             //starts at 0 and goes to radii[i]
int key1 = 0;                    //to see how many times enter is pressed
int numEll = 65;                  //number of ellipses, change this to generate more
int takeOver = wh;                //how the center dot will overtake the screen
int col;                          //place a hex code here to change color

void setup() {
  size(1400,900);
  smooth();
  stroke(#141414);
  fill(#141414);
  frameRate(60);
  for (int i = 0; i < numEll; i++){
    float x = random(60, 1000);
    radii = append(radii, x);
  }
  for (int i = 0; i < numEll; i++) radii0 = append(radii0, 0);
}

