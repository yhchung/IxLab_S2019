PImage photo;
void setup() {
  size(550, 500);
  //photo = requestImage("http://ww3.sinaimg.cn/large/005XSXmNgw1fb7ioysmt8j30g40g43z4.jpg");
  photo = requestImage("https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Killerwhales_jumping.jpg/1920px-Killerwhales_jumping.jpg");
}

void draw() {
  if (photo.width > 0) {
    image(photo, 0, 0, width,height);
  }
}
