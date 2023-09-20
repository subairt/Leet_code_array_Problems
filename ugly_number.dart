bool isUgly(int n) {
  if (n <= 0) {
    return false;
  }
  
  while (n % 2 == 0) {
    n ~/= 2;
  }
  
  while (n % 3 == 0) {
    n ~/= 3;
  }
  
  while (n % 5 == 0) {
    n ~/= 5;
  }
  
  return n == 1;

}
bool isUgly2(int n) {
  bool flag = true ;
  while (n>1){
    if(n % 2 == 0){
      n ~/= 2;
    }
    else if (n % 3 == 0){
      n ~/= 3;
    }
    else if (n % 5 == 0){
      n ~/=5;
    }
    else{
      flag = false;
      break;
    }
  }
 
  return flag;

}
void main() {
  int n = 33; 
  bool result = isUgly(n);
  print('$n is an ugly number: $result');

  bool result2 = isUgly2(n);
  print('$n is an ugly number: $result2');
}
