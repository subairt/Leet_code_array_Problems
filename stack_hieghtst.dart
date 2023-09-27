class MaxStack {
  final List<int> _stack = [];
  final List<int> _maxStack = [];

  void push(int value) {
    _stack.add(value);
    if (_maxStack.isEmpty || value >= _maxStack.last) {
      _maxStack.add(value);
    }
  }

  int pop() {
    if (_stack.isEmpty) {
      throw Exception("Stack is empty");
    }
    int poppedValue = _stack.removeLast();
    if (poppedValue == _maxStack.last) {
      _maxStack.removeLast();
    }
    return poppedValue;
  }

  int getMax() {
    if (_maxStack.isEmpty) {
      throw Exception("Stack is empty");
    }
    return _maxStack.last;
  }

  bool isEmpty() {
    return _stack.isEmpty;
  }
}

void main() {
  MaxStack stack = MaxStack();

  // Push elements onto the stack
  stack.push(10);
  stack.push(5);
  stack.push(15);
  stack.push(7);

  // Find and print the highest amount in the stack
  int highestAmount = stack.getMax();
  print('Highest amount in the stack: $highestAmount');
}
