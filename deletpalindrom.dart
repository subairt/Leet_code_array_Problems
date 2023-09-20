bool isPalindromeAfterDeletion(String s) {
  int left = 0;
  int right = s.length - 1;
  int deletion = 1;

  while (left < right) {
    if (s[left] != s[right]) {
      if (deletion == 0) {
        return false;
      }

      if (s[left + 1] == s[right]) {
        left++;
      } else if (s[left] == s[right - 1]) {
        right--;
      } else {
        return false;
      }

      deletion--;
    }

    left++;
    right--;
  }

  return true;
}

void main() {
  String testString1 = "abccdba";

  print(isPalindromeAfterDeletion(testString1));
}
