class Ball {
  int speed=2;
  char maxRank;

  void display() {
    fill(0);
    image( img, ballX-15, ballY-15 );
    ellipse(ballX, ballY, ballD, ballD);
  }
  void move() {
    keyPresed();
    maxRank = returnClearRank(ballY);
    
  }
  void keyPresed() {
    if (keyPressed == true) {
      if (key == CODED) {
        if (keyCode == UP && ballY-ballD > 0) {
          ballY -= speed;
        } else if (keyCode == LEFT && ballX-ballD >0) {
          ballX -= speed;
        } else if (keyCode == RIGHT && ballX+ballD < width) { 
          ballX += speed;
        }
      }
    }
  }
}
