
void setup(){
 size(500,800);
  
}

Ball b=new Ball();
Time t=new Time();
Object01 o=new Object01();

int time;
int max;
int rank;

void draw(){
  printBackground(max,rank);
  o.move();
  o.display();
  
  b.display();
  b.move();
  b.keyPresed();
  
  if(b.judgeObstacleBall()==false){
    b.returnBall();
  }
  
  t.countTime();
  
  judgeGame();

}
