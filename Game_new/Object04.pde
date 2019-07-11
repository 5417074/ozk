class Object04 extends Object {
  //downEllipse
  int r,y;
  Object04(int cnt){
    super(cnt);
  }
  int x = int(random(w-r));
  
  int speedX=int(random(-3, 3)), speedY=int(random(1, 3));
  
  color c = 155;
  
  void move() {
  }
  boolean outDisplay(){
    return false;
  }
  
  void display() {
  }
  void judge(int bx, int by, int d) {
    
    if (x-r/2<=bx+d/2 && bx+d/2<=x+r/2 
    && (r/2+d/2)*(r/2+d/2)>= (bx-x)*(bx-x) + (by-y)*(by-y)) {
      char rank = returnRank(ballY);
      if (rank=='C') {
        ballY=C;
      } else if (rank=='B') {
        ballY=B;
      } else if (rank =='A') {
        ballY=A;
      }
      println("落下する丸にぶつかった！！");
    }
  }
}
