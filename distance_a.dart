void main() {
  List<String> s = ['a', 'b', 'a', 'c', 'c','b'];
  List<int> distance = [1, 3, 0, 5, 0];

  int a = 'a'.codeUnitAt(0);

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 1; j < s.length; j++) {
      if (s[i] == s[j]) {
        int y = s[j].codeUnitAt(0) - a;
        if (distance[y] != 0) {
          print(true);
        }
        else{
          print(false);
        }
          return;
      }
    }
  }
  print(true);
}
