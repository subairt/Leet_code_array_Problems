List<int> selfDividingNumbers(int left, int right) {
  List<int> result = [];

  for (int num = left; num <= right; num++) {
    if (isSelfDividing(num)) {
      result.add(num);
    }
  }

  return result;
}

bool isSelfDividing(int num) {
  int originalNum = num;

  while (num > 0) {
    int digit = num % 10;

    if (digit == 0 || originalNum % digit != 0) {
      return false;
    }

    num ~/= 10;
  }

  return true;
}
void main() {
  int left = 1;
  int right = 14;
  
  List<int> result = selfDividingNumbers(left, right);
  print(result); 
}

