void main() {
  String number = "1231";
  String digit = "1";

  int n = number.length;
  int large = 0;
  int temp = 0;

  for (int i = 0; i < n; i++) {
    if (number[i] == digit) {
      if (i == 0) {
        temp = int.parse(number.substring(1));
      } else if (i == n - 1) {
        temp = int.parse(number.substring(0, n - 1));
      } else {
        temp = int.parse(number.substring(0, i) + number.substring(i + 1));
      }
    }

    if (temp > large) {
      large = temp;
    }
  }

  print("Large = $large");
}
