char returnRank(int y) {
  char rank = '0';
  if (B <= y && y <= h) {
    rank = 'C';
  } else if (A <= y && y <= B) {
    rank = 'B';
  } else if (S <= y && y <= A) {
    rank = 'A';
  } else {
    rank = 'S';
  }    
  return rank;
}
