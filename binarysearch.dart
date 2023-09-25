class Binarysearch {
  binarysearch(List<int> array, int target) {
    int start = 0;
    int end = array.length - 1;

    while (start <= end) {
      int middle = start + (end - start) ~/ 2;

      if (array[middle] == target) {
        return middle;
      } else if (array[middle] > target) {
        end = middle - 1;
      } else if (array[middle] < target) {
        start = middle + 1;
      }
    }
    return -1;
  }
}

void main() {
  List<int> array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 13, 15];

  Binarysearch binary = new Binarysearch(); 

  print(binary.binarysearch(array, 9));
}
