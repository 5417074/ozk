char returnClearRank(int y) {
  char rank = clearRank;
  if(y < S){
    rank = 'S';
  }else if(y < A && rank != 'S'){
    rank = 'A';
  }else if(y < B && rank != 'S' && rank != 'A'){
    rank = 'B';
  }else if(rank != 'S' && rank != 'A' && rank != 'B'){
    rank = 'C';
  }
  return rank;
}
