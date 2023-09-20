int findInteger(List<int> nums) {
  int n = nums.length;
  int quarter = n ~/ 4;

  for (int i = 0; i < n - quarter; i++) {
    if (nums[i] == nums[i + quarter]) {
      return nums[i];
    }
  }

  return -1; 
}
void main(){
  List <int>nums=[1,2,2,6,6,6,6,7,10];
   int result = findInteger(nums);

  print(" $result");
}