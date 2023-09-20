int lastStoneWeight(List<int> stones) {
  while (stones.length > 1) {
    stones.sort(); // Sort the stones in ascending order
    final y = stones.removeLast(); // Get the heaviest stone
    final x = stones.removeLast(); // Get the second heaviest stone

    if (x != y) {
      stones.add(y - x); // Add the result back to the list
    }
  }

  return stones.isEmpty ? 0 : stones[0]; // Return the last stone's weight (if any), or 0 if no stones are left
}

void main() {
  
  var stones = [2, 7, 4, 1, 8, 1];
  var result = lastStoneWeight(stones);
  print(result); 
}
