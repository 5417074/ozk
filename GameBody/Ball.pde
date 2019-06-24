class Ball {
  int x, y;
  int speed=1;
  int size=5;
  int w = 500, h = 800;
  Ball() {
    x = w /2;
    y = h - size;
  }
  void display() {
    fill(0);
    ellipse(x, y, size, size);
  }
  void move() {
    keyPresed();
  }
  void keyPresed() {
    if (keyPressed == true) {
      if (key == CODED) {
        if (keyCode == UP && y >= 0) {
          y -= speed;
        } else if (keyCode == LEFT && x >= 0) {
          x -= speed;
        } else if (keyCode == RIGHT && x <= width-size) {
          x += speed;
        }
      }
    }
  }
  boolean judgeObstacleBall() {
    //hit
    //return false;
    //else{
    return true;
    //}
  }

  void returnBall() {
    x = w /2;
    y = h - size;
  }
}
