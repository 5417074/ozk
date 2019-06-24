int w=500;
int h=800;
int startCnt=1;
void setup() {
  size(500, 800);
}

Ball b=new Ball();
//Time t=new Time();
Object01 o=new Object01();

int time;
int max;
int rank;

void draw() {
  //startGame();
  gameEnd();
}



void startGame() {
  if (startCnt==0) {
    background(255);
    fill(0);
    rect(w/2-150, h/2-150, 300, 300);
    fill(255);
    text("Enterkey -> start", w/2-50, h/2, 300);
    if (key==ENTER) {
      startCnt+=1;
    }
  }
  if (startCnt>=1) {
    playGame();
  }
}



void playGame() {
  printBackground(max, rank);
  o.move();
  o.display();

  b.display();
  b.move();
  b.keyPresed();

  if (b.judgeObstacleBall()==false) {
    b.returnBall();
  }

 // t.countTime();

  judgeGame();
}


void gameEnd() {
  background(0);
  startCnt=0;
  if (key==ENTER) {
    startCnt+=1;
  }
  if (startCnt>=1) {
    startGame();
  }
}
