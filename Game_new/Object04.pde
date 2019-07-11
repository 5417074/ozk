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
  }
}
