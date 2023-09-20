int countCharacters(List<String> words, String chars) {
  // Create a map to store the character frequencies in chars.
  Map<String, int> charFreq = {};
  for (int i = 0; i < chars.length; i++) {
    charFreq[chars[i]] = charFreq[chars[i]] == null ? 1 : charFreq[chars[i]]! + 1;
  }

  int totalLength = 0;

  for (String word in words) {
    // Clone the charFreq map for each word.
    Map<String, int> tempFreq = Map.from(charFreq);
    bool canForm = true;

    for (int i = 0; i < word.length; i++) {
      if (tempFreq[word[i]] == null || tempFreq[word[i]] == 0) {
        canForm = false;
        break;
      } else {
        tempFreq[word[i]];
      }
    }

    if (canForm) {
      totalLength += word.length;
    }
  }

  return totalLength;
}

void main() {
  List<String> words = ["cat", "bt", "hat", "tree"];
  String chars = "atach";
  int result = countCharacters(words, chars);
  print("Output: $result"); // Output: 6
}
