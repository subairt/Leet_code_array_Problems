int addDigits(int num) {

  while (num >= 10) {
    num = num.toString().split('').map(int.parse).reduce((a, b) => a + b);
  }
  return num;
}
void main(){
  print(addDigits(18));
}