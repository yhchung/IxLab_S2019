PImage photo;

void settings() {
  photo = loadImage("orca.jpg");
  size(photo.width/2, photo.height/2);
}

void setup() {
  photo.resize(photo.width/2, photo.height/2);
}

void draw() {
  image(photo, 0, 0);
 
}
