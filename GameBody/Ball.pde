class Ball{
  int x,y;
  int speed=1;
  int size=5;
  Ball(){
    x = 500 /2;
    y = 800 - size;
  }
  void display(){
    fill(0);
    ellipse(x,y,size,size);
  }
  void move(){
    keyPresed();
  }
  void keyPresed(){
    if (keyPressed == true) {
      if (key == CODED) {
        if (keyCode == UP && y >= 0) {
          y -= speed;
        } else if (keyCode == DOWN && y <= height-size) {
          y += speed;
        } else if (keyCode == LEFT && x >= 0) {
          x -= speed;
        } else if (keyCode == RIGHT && x <= width-size) {
          x += speed;
        }
      }
    }
  }
  boolean judgeObstacleBall(Object o){
    //hit
    return true;
    //else{return false;}
  }
  
  void returnBall(){
    //?
  }
}
