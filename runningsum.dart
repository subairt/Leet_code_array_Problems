void main() {
  List<int> nums = [1, 2, 3, 4, 5]; // Your array of numbers
  List<int> runningSum = calculateRunningSum(nums);
  
  print('Running Sum: $runningSum');
}

List<int> calculateRunningSum(List<int> nums) {
  List<int> runningSum = [];
  int currentSum = 0;
  for (int num in nums) {
    currentSum += num;
    runningSum.add(currentSum);
  }
  return runningSum;
}
