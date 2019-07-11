int startGame() {
  color colorA = color(#FD9DFF);
  color colorB = color(#62C6D8);
  
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
  //background(0);
  int startTime = 0;
  int cnt = 0;
  ballX=w /2;
  ballY=h - ballD;
  clearRank = 0;

  fill(255);
  textSize(40);
  text("GAME START", width/2, height/2);

  //fill(255);
  textSize(30);
  text("Click Enter", width/2, height * 2/3);
  
  if (key==ENTER) {
    play=true;
    start = false;
    startTime = millis() / 1000;
    for(int i = 0; i < oLen; i++){
      if(i%4 == 0){ 
        o[i] = new Object02(cnt);
      }else{
        o[i] = new Object04(cnt);
      }
    }
  } else if(key == TAB){
    start = false;
    level = true;
  }
  return startTime;
}
