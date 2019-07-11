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
  }
  boolean outDisplay(){
    return false;
  }
  void display() {
  }
  void judge(int bx, int by, int d) {
  }
}
