import 'dart:math';

void main() {
  List<int> nums = [3,-4,-2,-1, 40, -5, -6, 5, 3];
  int k = 11;
if(k <= nums.length){
   double result = Average(nums, k);
  print(result); 
}  else{
  print('kunchone');
}

 
}
double Average(List<int> nums, int k) {
  int sum = nums.sublist(0, k).reduce((a, b) => a + b);
  double maxAverage = sum / k;

  for (int i = k; i < nums.length; i++) {
    sum += nums[i] - nums[i - k];
    maxAverage = max(maxAverage, sum/ k);
  }

  return maxAverage;
}
