List<int> replace(List<int> arr) {
  int maxRight = -1; // Initialize the maximum element on the right as -1

  for (int i = arr.length - 1; i >= 0; i--) {
    int currentElement = arr[i];
    arr[i] = maxRight; // Replace the current element with the maximum on the right

        // Update 'maxRight' to be the maximum of the current element and the previous 'maxRigh
    maxRight = (currentElement > maxRight) ? currentElement : maxRight;
    print(arr);
  }

  return arr;
}

void main() {
  // Example usage:
  List<int> arr = [17, 18, 5, 4, 6, 1];
  List<int> result = replace(arr);
  print(result);  // Output: [18, 6, 6, 6, 1, -1]
}
