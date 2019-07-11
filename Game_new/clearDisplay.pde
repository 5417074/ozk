void clearDisplay(int t) {
  textAlign(CENTER);
  fill(255);
  textSize(60);
  text("CLEAR!!", width/2, height/2);

  char rank = returnRank(ballY);
  
}
