class Object03L extends Object {
  //startLeft gotoRight
  Object03L(int cnt){
    super(cnt);
  }
  int rx = int(random(100, 150));
  int ry = int(random(50, 70));
  int x = -rx;
  int y = int(random(0,B));
  int maxRank;
  
  int speedX=int(random(1, 3));
  
  color c;
  
  void move() {
  }
  boolean outDisplay(){
    return false;
  }
  void display() {
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
      println("左から来た四角にぶつかった！！");
    }
  }
}
