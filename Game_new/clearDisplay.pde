void clearDisplay(int t) {
  color colorA = color(#ffff00);
  color colorB = color(#ff4500);

  float dr = (red(colorB) - red(colorA))/height;
  float dg = (green(colorB) - green(colorA))/height;
  float db = (blue(colorB) - blue(colorA))/height;

  for (int i = 0; i < height; i++) {
    color lineColor = color(
    (red(colorA) + i*dr), 
    (green(colorA) + i*dg), 
    (blue(colorA) + i*db));

    stroke(lineColor);
    line(0, i, width, i);
  }

  textAlign(CENTER);
  fill(255);
  textSize(60);
  text("CLEAR!!", width/2, height/2);

  char rank = returnRank(ballY);
  textSize(30);
  text("rank = " + rank, width/2, height*12/20);

  //int t = returnTimecount();
  t = Lt - t;
  text("clear time = " + t, width/2, height*13/20);
  
  textSize(20);
  text("replay : press[Space]", width/2, height * 15/20);
  text("level change : press[TAB]", width/2, height * 16/20);
  text("exit : press[z]", width/2, height * 17/20);

  if (key == ' ') {
    clear = false;
    start = true;
  } else if(key == TAB){
    clear = false;
    level = true;
  } else if (key == 'z') {
    clear = false;
    exit();
  }
}
