
  int S=11;
  
  int new_h=(h-S)/3;
  
  int A=h-(new_h)*2;
  int B=A+new_h;
  int C=B+new_h;
  
void printBackground(int max,int rank){
  
  int S=11;
  
  int new_h=(h-S)/3;
  
  int A=S+(new_h);
  int B=A+new_h;
  int C=B+new_h;
  
  background(255);
  noStroke();
  fill(255,255,0);
  rect(0,0,width,S);
  
  fill(255,0,0);
  rect(0,S,width,A);
  fill(0,0,255);
  rect(0,A,width,B);
  fill(0,255,0);
  rect(0,B,width,C);
  
}
