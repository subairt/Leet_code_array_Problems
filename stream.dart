
import 'dart:async';

void main() {
  // Call the maia function to start the boatStream.
  maia();
}

void maia() {
  // Define an asynchronous stream of integers.
  Stream<int> boatStream() async* {
    for (int i = 1; i <= 10; i++) {
      print("SEND boat NO." + i.toString());
      await Future.delayed(Duration(seconds: 1));
      yield i;
    }
  }

  // Subscribe to the stream and listen for events.
  boatStream().listen((int boatNumber) {
    print("Received boat NO. " + boatNumber.toString());
  });
}

