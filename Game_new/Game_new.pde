int w=700, h=1000;
int ballD=5, ballX=w /2, ballY=h - ballD;
char clearRank = 0;
int startTime;
int oLen = 20;
int clearTime;
int Lt = 20;

PImage img;

boolean start=false;
boolean play=false;
boolean clear=false;
boolean timeOver=false;
boolean obstacleOver=false;
boolean level=true;

int S=11;
int new_h=(h-S)/3;
int A=S+(new_h);
int B=A+new_h;
int C=B+new_h;

Ball b=new Ball();
Object[] o = new Object[oLen];

void setup() {
  size(700, 1000);
  noStroke();
  //画像読み込み
  frameRate( 100 );
  img = loadImage( "mero.png" );
}

void draw() {
  if (level) {
    levelDisplay();
  }
  if (start) {
    startTime = startGame();
  }
  if (play) {
    printBackground();
    clearTime = playingGame(startTime);
  }

  if (clear) {
    play = false;
    clearDisplay(clearTime);
  }

  if (timeOver) {
    TimeOverDisplay();
  }
}
