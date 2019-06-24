abstract class Object{
  int w,h,x,y;
  int speed;
  color c;

  abstract void move();
  abstract void display();
  abstract void judge(int x,int y);
  
}
