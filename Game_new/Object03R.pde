class Object03R extends Object {
  //startRight gotoLeft
  Object03R(int cnt){
    super(cnt);
  }
  int rx = int(random(100, 150));
  int ry = int(random(50, 70));
  int x = w;
  int y = int(random(0,B));
  
  int speedX=int(random(1, 3));
  
  color c = 155;
  
  void move() {
    x -= speedX;
    //x -= int(random(-4, 4)) + speedX;
  }
  boolean outDisplay(){
    if(x+rx < 0){
      return true;
    }
    return false;
  }
  void display() {
    //fill(c);
    fill(c1,c2,c3);
    rect(x, y, rx, ry);
  }
  void judge(int bx, int by, int d) {
    //println(ballY);
    if (x<=bx+d/2 && bx-d/2<=x+rx && y<=by+d/2 && by-d/2<=y+ry) {
      char rank = returnRank(ballY);
      if (rank=='C') {
        ballY=C;
      } else if (rank=='B') {
        ballY=B;
      } else if (rank =='A') {
        ballY=A;
      }
      println("右から来た四角にぶつかった！！");
    }
  }
}
