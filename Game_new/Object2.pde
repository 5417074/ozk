class Object02 extends Object {
  //downRect
  int rx = int(random(50, 100));
  int ry,y;
  int x = int(random(w-rx));
  Object02(int cnt){
    super(cnt);
  }
  
  color c = 155;
  
  int speedX=int(random(-3, 3)), speedY=int(random(1, 3));
  
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
