import gifAnimation.*;
GifMaker gifExport;

color[] palette = {#1A4F7A, #DC5E4B, #59C0E1, #9BA6B9, #261C1A};

void setup() {
  size(600,200);
  smooth();
  noFill();
  strokeWeight(5);
  
//  frameRate(12);
  gifExport = new GifMaker(this, "bubbles.gif");
  gifExport.setRepeat(0); // make it an "endless" animation
//  gifExport.setTransparent(255); // make white the transparent color -- match browser bg color
  gifExport.setDelay(1000/60);  //12fps in ms
  
};

void draw() {
  float x = random(width);
  float y = random(height);
  float d = random(5, 100);
  stroke(palette[(int(random(5)))]);
  ellipse(x,y,d,d);
  
  
  gifExport.addFrame();
  if (frameCount == 60*4) gifExport.finish();  
  
  
};

