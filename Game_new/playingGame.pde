int playingGame(int startTime) {
  int cnt = 1;

  b.display();
  b.move();
  clearRank = b.maxRank;
  for(int i = 0; i < oLen; i++){
    o[i].move();
    o[i].display();
    o[i].judge(ballX, ballY, ballD);
    if(o[i].outDisplay()){
      int decideObject = int(random(0,10));
      if(decideObject < 4){
        o[i] = new Object02(cnt);
        //rect
      }else if(decideObject < 6){
        o[i] = new Object04(cnt);
        //ellipse
      }else if(decideObject < 8){
        o[i] = new Object03L(cnt);
      }else if(decideObject < 10){
        o[i] = new Object03R(cnt);
      }
    }
  }
  int t = returnTimecount(startTime);
  char rank = returnRank(ballY);
  if (rank == 'S') {
    clear=true;
  } else if (t <= 0) {
    timeOver=true;
  }
  return returnTimecount(startTime);
}
