void draw() {
  background(#F0F0F0);
  translate(width/2, height/2);
  
  pushMatrix();
  rotate(k*PI/5);
  for (int i = 0; i < numEll; i += 2){
    ellipse(cos(i*PI/(numEll/2))*radii0[i], sin(i*PI/(numEll/2))*radii0[i], wh,wh);  
    line(0,0, cos(i*PI/(numEll/2))*radii0[i], sin(i*PI/(numEll/2))*radii0[i]);
  }
  popMatrix();
  
  pushMatrix();
  rotate(-k*PI/5);
  for (int i = 1; i < numEll; i += 2){
    ellipse(cos(i*PI/(numEll/2))*radii0[i], sin(i*PI/(numEll/2))*radii0[i], wh,wh);
    line(0,0, cos(i*PI/(numEll/2))*radii0[i], sin(i*PI/(numEll/2))*radii0[i]);
  }
  popMatrix();
  
  if (key1 == 0) {
    fill(0);
    
  }
  ellipse(0,0, takeOver,takeOver);
  if (pressed) {
    for (int i = 0; i < numEll; i++) if (radii0[i] < radii[i]) radii0[i] += 50;
  }
   
  k += 0.1;
  if (key1 > 1) {
    for (int i = 0; i < numEll; i++)if (radii0[i] > -wh) radii0[i] -= 80;
    if (max(radii0) < (wh*2)) takeOver += 150;
  }
  
  
}


void mousePressed() {
  pressed = true;
  key1 += 1;
}
