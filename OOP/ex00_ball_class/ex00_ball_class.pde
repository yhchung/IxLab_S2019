Ball b;

void setup() {
  size(300, 300);
  noStroke();
  pixelDensity(2);

  b = new Ball(100, 50);
}

void draw() {
  background(255);
  
  b.move();
  b.bounce();
  b.display();
}
