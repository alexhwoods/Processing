// very random program. A circle in the middle increases in size,
// and there are staticy points in the in the foreground like an old movie.

void setup() {
  size(1400, 1000);
  smooth();
  background(180);
}

//variables I need to intialize
float x = 0.0;             //a variable for the points
float y = 0.0;             //a variable for the points
int frame_count = 0;       //keeps track of iterations through draw()
float hw = 0.0;            //height/width of ellipses, will be turned into random height/width
float div = 3;             //the divisor, will be diminished, growing the circles


//draw time
void draw() {
  background(180);
  hw = hw + 0.01;           //used for Perlin noise, to grow the circles
  if (frame_count == 40) {
    div = div - 0.4;
    frame_count = 0;
    //if (div <= 0.4) div = 3;
  }
  if (div <= 0.4) {
    for (int i = 0; i < 5; i++) {
      background(180);
      fill(240);
      int width2 = 279;
      float pos = ((i / 5) * width) + (width2 / 2);
      float pos2 = pos + (width / 5);
      float pos3 = pos2 + (width / 5);
      float pos4 = pos3 + (width / 5);
      float pos5 = pos4 + (width / 5);
      
      
      System.out.println(i);
      ellipse(pos, 500, width2, width2);
      ellipse(pos2, 500, width2, width2);
      ellipse(pos3, 500, width2, width2);
      ellipse(pos4, 500, width2, width2);
      ellipse(pos5, 500, width2, width2);
      for (int h = 0; h < 500; h++) {
        x = random(1)* width;
        y = random(1) * height;
        point(x, y); 
        }
      
    }
  }
  else {
    float rhw = noise(hw) * (width / div);
    fill(random(255), random(255), random(255));
    ellipse(700, 500, rhw, rhw);
    for (int t = 0; t < 10000; t++) {
      x = random(1)* width;
      y = random(1) * height;
      point(x, y); 
  } 
  }
  frame_count += 1;
  System.out.println(frame_count);
}


