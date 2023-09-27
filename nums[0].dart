class Solution {
  List<int> createTargetArray(List<int> nums, List<int> index) {
    List<int> target = [];
    for (int i = 0; i < nums.length; i++) {
      target.insert(index[i], nums[i]);
    }
    return target;
  }
}

void main() {
  Solution solution = Solution();

  List<int> nums = [0, 1, 2, 3, 4];
  List<int> index = [0, 1, 2, 2, 1];

  List<int> targetArray = solution.createTargetArray(nums, index);

  print("Target Array: $targetArray");
}
