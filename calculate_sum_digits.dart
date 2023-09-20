int subtractProductAndSum(int n) {
  // Convert the integer to a string to access its digits
  String digits = n.toString();
  
  // Initialize variables to store product and sum
  int product = 1;
  int sumOfDigits = 0;
  
  // Calculate the product and sum of digits
  for (int i = 0; i < digits.length; i++) {
    int digitValue = int.parse(digits[i]);
    product *= digitValue;
    sumOfDigits += digitValue;
  }
  
  // Calculate the difference between the product and sum
  int result = product - sumOfDigits;
  
  return result;
}

void main() {
  // Example usage:
  int n = 234;
  int result = subtractProductAndSum(n);
  print(result);  // Output: 15
}
