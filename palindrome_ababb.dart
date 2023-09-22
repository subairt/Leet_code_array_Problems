class Solution {
  int removePalindromeSub(String s) {
    if (s.isEmpty) {
      return 0;
    }
  
    if (_isPalindrome(s)) {
      return 1;
    }
  
    return 2;
  }

  bool _isPalindrome(String s) {
    int left = 0;
    int right = s.length - 1;
  
    while (left < right) {
      if (s[left] != s[right]) {
        return false;
      }
      left++;
      right--;
    }
  
    return true;
  }
}

void main() {
  Solution solution = Solution();
  String inputString = "malayalah"; 
  int result = solution.removePalindromeSub(inputString);
  print("Result: $result");
}
