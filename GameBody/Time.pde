class Time {
  
  int timeLimit = 100;
  int countDown;

  void countTime() {
    
    int ms = millis()/1000;
    println(ms);

    fill(0);
    countDown = timeLimit - ms;
    if (countDown > 0) {
      if (countDown <= 10) {
        fill(255, 0, 0);
      }
      textSize(30);
      text(+countDown, width - 50, height - 50);
    } else {
      rect(0, 0, width, height);
      fill(255);
      textAlign(CENTER);
      textSize(30);
      text("Sorry Serinuntius...", width / 2, height / 2);
    }
  }
}
  
