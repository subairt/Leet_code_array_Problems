class Solution {
  List<int> smallerNumbersThanCurrent(List<int> nums) {
    List<int> output = [];
    for (int i = 0; i < nums.length; i++) {
      int k = 0;
      for (int j = 0; j < nums.length; j++) {
        if (nums[j] < nums[i] && j != i) {
          k++;
        }
      }
      output.add(k);
    }
    return output;
  }
}

void main() {
  Solution solution = Solution();
  List<int> nums = [8, 1, 2, 2, 3]; 
  List<int> result = solution.smallerNumbersThanCurrent(nums);
  print("Result: $result");
}
