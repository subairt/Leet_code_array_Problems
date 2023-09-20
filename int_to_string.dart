void main() {
  String num = '82460';
  int n = num.length;
  List<String> temp = num.split('');

  for (int i = 0; i < n; i++) {
    int even = 0;
    int odd = 0;

    if (int.parse(temp[i]) % 2 == 0) {
      even = 1; // Got Even, Find Greater following Even
    } else {
      odd = 1; // Got Odd
    }

    for (int j = i + 1; j < n; j++) {
      if (even == 1) {
        if (int.parse(temp[j]) % 2 == 0 && int.parse(temp[i]) < int.parse(temp[j])) {
          // Found Larger Even --> SWAP
          String tempVal = temp[i];
          temp[i] = temp[j];
          temp[j] = tempVal;
        }
      } else if (odd == 1) {
        if (int.parse(temp[j]) % 2 != 0 && int.parse(temp[i]) < int.parse(temp[j])) {
          // Found Larger ODD --> SWAP
          String tempVal = temp[i];
          temp[i] = temp[j];
          temp[j] = tempVal;
        }
      }
    }
  }

  String output = '';
  for (String digit in temp) {
    output += digit;
  }

  print('Output = $output');
}
