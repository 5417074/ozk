class Object01 extends Object {
  Object01(int cnt){
    super(cnt);
  }
  
  int Ox,Oy,Ow,Oh; 
  int speedX,speedY;

  color c;
  
  void move() {
  }
  void display() {
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
