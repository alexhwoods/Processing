void setup() {
size(400,400,OPENGL);
}

void draw() {
background(#F5DEE2);
stroke(#733A49);
strokeWeight(2);
fill(#733A49);

float thetaX = PI*mouseX/width;
float thetaY = PI*mouseY/height;

//translate origin to center
translate(width/2,height/2);

rotateX(thetaX);
rotateY(thetaY);

line(-50,-50,50,50);

translate(-50,-50);
sphere(10);

translate(100,100);
sphere(10);
}
