List<int> sumZero(int n) {
  List<int> result = [];

  if (n % 2 != 0) {
    result.add(0);
    n--;
  }

  for (int i = 1; i <= n / 2; i++) {
    result.add(i);
    result.add(-i);
  }

  return result;
}

void main() {
  int n = 15;
  List<int> result = sumZero(n);
  print(result);
}
