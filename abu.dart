import 'dart:io';

bool isPrime(int N) {
  if (N <= 1) {
    return false;
  }
  
  for (int i = 2; i <= N ~/ 2; i++) {
    if (N % i == 0) {
      return false;
    }
  }
  
  return true; 
}

void main() {
  print("Enter a number:");
  int N = int.parse(stdin.readLineSync()!);

  bool result = isPrime(N);

  if (result) {
    print("$N is a prime number.");
  } else {
    print("$N is not a prime number.");
  }
}








