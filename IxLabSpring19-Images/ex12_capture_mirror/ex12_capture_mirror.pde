import processing.video.*; 
Capture cam;

void setup() { 
  size(640, 480); 
  cam = new Capture(this, 640, 480);
  cam.start(); 
} 

void draw() { 
  if (cam.available()) { 
   cam.read(); 
  } 
  pushMatrix();
  translate(cam.width, 0);
  scale(-1,1);
  image(cam, 0, 0);
  popMatrix();
}
