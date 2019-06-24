int w=500;
int h=800;
int x, y;
int start=0;
int timeCounter = 0;  
int limitTime = 10;

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
  switch(start) {
  case 0:
    startGame();
    break;
  case 1:
    playGame();
    
    break;
  }
  //gameEnd();
}



void startGame() {
  if (start==0) {
    background(255);
    fill(0);
    rect(w/2-150, h/2-150, 300, 300);
    fill(255);
    text("Enterkey -> start", w/2-50, h/2, 300);
    if (key==ENTER) {
      start=1;
    }
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

  int t = returnTimecount();
  char rank = returnRank(y);
  if (rank == 'S') {
    // clearDisplay();
  } else if (t <= 0) {
    //TimeOverDisplay();
  }

  judgeGame();
}
