void printBackground(){
  background(255);
  noStroke();
  fill(255,255,0);
  rect(0,0,width,S);
  
  if (ballY - ballD <= A && ballY - ballD > S) {
    if (frameCount / 10 % 2 == 0) {
      fill(255, 0, 0);
    } else {
      fill(0);
    }
  } else {
    fill(255, 0, 0);
  }
  
  rect(0,S,width,A);
  fill(0,0,255);
  rect(0,A,width,B);
  fill(0,255,0);
  rect(0,B,width,C);
  
  fill(0);
  textSize(30);
  
}