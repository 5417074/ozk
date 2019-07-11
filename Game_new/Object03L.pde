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
  }
}
