int countEven(List<int> nums) {
  int count = 0;
  for (int num in nums) {
    int numDigits = num.abs().toString().length;
    if (numDigits % 2 == 0) {
      count++;
    }
  }
  return count;
}
void main() {
  List<int> nums = [12,6,1234,5678];
  int evenDigit = countEven(nums);
  print('$evenDigit');
}