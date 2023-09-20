int findLargestTwiceOthers(List<int> nums) {
  int maxVal = nums.reduce((value, element) => value > element ? value : element);
  int maxIndex = nums.indexOf(maxVal);

  for (int i = 0; i < nums.length; i++) {
    if (i != maxIndex && nums[i] > maxVal / 2) {
      return -1;
    }
  }

  return maxIndex;
}
void main() {
  List<int> nums = [5, 10, 15, 29, 7];
  int result = findLargestTwiceOthers(nums);

  if (result != -1) {
    print("$result");
  } else {
    print("No element satisfies the condition.");
  }
}
