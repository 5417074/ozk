class Object01 extends Object {
  Object01(int cnt){
    super(cnt);
  }
  
  int Ox=width/2, Oy=height/2, Ow=100, Oh=100; 
  int speedX=1, speedY=1;

  color c=155;
  
  void move() {
    Ox+=speedX;
    Oy+=speedY;
    if (width<Ox+Ow) {
      speedX*=-1;
    }
  }
  void display() {
    fill(c);
    rect(Ox, Oy, Ow, Oh);
  }
  
  void judge(int bx, int by, int d) {
    println(ballY);
    if (Ox<=bx+d/2 && bx-d/2<=Ox+Ow && Oy<=by+d/2 && by-d/2<=Oy+Oh) {
      char rank = returnClearRank(ballY);
      if (rank=='C') {
        ballY=C;
      } else if (rank=='B') {
        ballY=B;
      } else if (rank =='A') {
        ballY=A;
      }
      print("オブジェクトにぶつかった！！");
    }
  }
  boolean outDisplay(){
    return false;
  }
}
