// DON'T RUN IF YOU GET SEISURES OR HAVE EPILEPSY!!!!
// THIS HAS A STROBING EFFECT.

void draw() {
  background(0);
  translate(width/2, height/2);
  //circle for the center
  inc = inc + .2;
  radiusCircle = noise(inc) * 200;
//  radiusStore = 60;
//  radiusCircle = radiusStore + 0.5;
  ellipseMode(RADIUS);
  noStroke();
  //fill(center[int(random(0,3))]);
  fill(center[0]);
  ellipse(0,0,radiusCircle - 6,radiusCircle - 6);


  //for point circles
  for (int i = 0; i < 50; i++) {
    if (i == 0) radiusCircle = radiusCircle;
    else radiusCircle = radiusCircle + (radiusCircle / 8) - 1;
    for (float angle = 0; angle < 2*PI; angle += .1){
      strokeNum = int(random(0,5));
      strokeWeight(radiusCircle / 10);
//      if (i % 4 == 0) stroke(palette[0]);
//      else if (i % 3 == 0) stroke(palette[1]);
//      else stroke(palette[2]);
      stroke(palette[strokeNum]);
      x = cos(angle) * radiusCircle;
      y = sin(angle) * radiusCircle;
      point(x, y);
    }
  }

  
}


