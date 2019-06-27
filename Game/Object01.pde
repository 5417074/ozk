class Object01 extends Object {
  int x=50, y=50, w=40, h=10; 
  int speedX=1,speedY=1;
  
  color c=155;
  void move() {
    x+=speedX;
    y+=speedY;
    if(width<x+w){
      speedX*=-1;
    }
  }
  void display() {
    fill(c);
    rect(x, y, w, h);
  }
  void judge(int x, int y,int w,int h) {
    
  }
}
