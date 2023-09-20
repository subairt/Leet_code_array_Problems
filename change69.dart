String maximum69Number(int num) {
  // Convert the integer to a string for easy manipulation
  String numStr = num.toString();
  
  // Iterate through the characters of the string
  for (int i = 0; i < numStr.length; i++) {
    if (numStr[i] == '6') {
      // Replace the first '6' with '9'
      numStr = numStr.replaceFirst('6', '9');
      break; // Stop after the replacement
    }
  }
  
  // Convert the modified string back to an integer
  return numStr;
}

void main() {
  int num = 9669;
  String result = maximum69Number(num);
  print(result); // Output: 9969
}
