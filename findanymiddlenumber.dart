void main() {
  List<int> arr = [13,45,65,23,12,1,9];

  for (int i = 0; i < arr.length; i++) {
    for (int j = 0; j < arr.length; j++) {
      if (arr[i] > arr[j]) {
        var temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
    }
  }

  if (arr.length < 2) {
    print(-1);
  } else {
    print(arr[arr.length ~/2]);
  }
}
