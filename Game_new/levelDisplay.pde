void levelDisplay() {
  color colorA = color(#58FAF4);
  color colorB = color(#00FF80);

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
  //background(255, 255, 0);
  fill(255);
  textSize(40);
  text("Please select level.", width/2, height/2);

  textSize(30);
  text("level 1 : press[1]", width/2, height * 13/20);
  text("level 2 : press[2]", width/2, height * 14/20);
  text("level 3 : press[3]", width/2, height * 15/20);

  if (key=='1') {
    oLen = 8;
    level = false;
    start = true;
  } 
  else if (key=='2') {
    oLen = 14;
    level = false;
    start = true;
  }
  else if (key=='3') {
    oLen = 20;
    level = false;
    start = true;
  }
}
