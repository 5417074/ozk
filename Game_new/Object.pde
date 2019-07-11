abstract class Object {
  int r;
  Object(int cnt){
  }
  int c1 = int(random(0,256));
  int c2 = int(random(0,256));
  int c3 = int(random(0,256));

  abstract void move();
  abstract void display();
  abstract void judge(int bx, int by, int d);
  abstract boolean outDisplay();
}
