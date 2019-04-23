import processing.video.*;
Movie myMovie;
void setup() {
  size(480, 480);
  myMovie = new Movie(this, "Harbour_Centre.mov");
  myMovie.play();
}
void draw() {
  if (myMovie.available()) {
    myMovie.read();
  }
  image(myMovie, 0, 0);
}
