class Solution {
  String sortString(String s) {
  List<int> freq = List<int>.filled(26, 0);
  String ans = "";
  
  for (int i = 0; i < s.length; i++) {
    int ch = s.codeUnitAt(i) - 'a'.codeUnitAt(0);
    freq[ch]++;
  }

  while (ans.length != s.length) {
    for (int i = 0; i < freq.length; i++) {
      if (freq[i] > 0) {
        String c = String.fromCharCode('a'.codeUnitAt(0) + i);
        ans += c;
        freq[i]--;
      }
    }
    for (int i = freq.length - 1; i >= 0; i--) {
      if (freq[i] > 0) {
        String c = String.fromCharCode('a'.codeUnitAt(0) + i);
        ans += c;
        freq[i]--;
      }
    }
  }
  
  return ans;
}

}
void main() {
  Solution solution = Solution();
  String s = "aaaabbbbcccc";
  String result = solution.sortString(s);
  print(result); 
}
