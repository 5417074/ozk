void TimeOverDisplay() {  
  textAlign(CENTER);
  play = false;
  //background(0);
  fill(255);
  textSize(50);
  text("Game Over", width/2, height/2);

  textSize(30);
  text("rank = " + clearRank, width/2, height*12/20);
  
  fill(0);
  text("continue : press[Space]", width/2, height * 15/20);
  text("level change : press[TAB]", width/2, height * 16/20);
  text("exit : press[z]", width/2, height * 17/20);

  if (keyPressed == true) {
    if (key==' ') {
      timeOver = false;
      start = true;
    } else if (key == TAB) {
      timeOver = false;
      level = true;
    } else if (key == 'z') {
      timeOver = false;
      exit();
    }
  }
}
