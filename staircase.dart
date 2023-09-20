int findMaxRows(int n) {
  int k = 0;
  int sum = 0;
  
  while (sum <= n) {
    k++;
    sum = (k * (k + 1)) ~/ 2;
  }
  
  return k - 1;
}

void main() {
  int n = 8; 
  int maxRows = findMaxRows(n);
  print("The maximum number of rows in the staircase is: $maxRows");
}
