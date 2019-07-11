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
    }
  }
  int t = returnTimecount(startTime);
  char rank = returnRank(ballY);
  return returnTimecount(startTime);
}
