void main() {
  List<int> arr = [2, 3, 4, 5, 6, 7, 8,12,6];
  int y = 0;
  int value = 0;

  for (int i = 0; i < arr.length; i++) {
    if (arr[i] % 2 == 0 && arr[i]%3 ==0) {
        value = value+arr[i];
        y++;
     
    }
  }

  double sum = value / y;
  print(sum);
}
