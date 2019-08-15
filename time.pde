int returnTimecount(int startTime) {

  int timeLimit = 20 + startTime;
  int countDown;
  int ms = millis()/1000;
  //println(ms);

  fill(0);
  countDown = timeLimit - ms;

  if (countDown > 0) {

    if (countDown <= 10) {
      fill(255, 0, 0);
    }
    fill(255);
    rect(width - 62, height - 80, 40, 40);
    textSize(30);
    fill(0);
    text(+countDown, width - 60, height - 50);
  }
  return countDown;
}