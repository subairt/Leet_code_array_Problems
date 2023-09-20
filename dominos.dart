int numEquivalentDominoPairs(List<List<int>> dominoes) {
  final dominoCounts = <List<int>, int>{};
  var count = 0;

  for (final domino in dominoes) {
    final sortedDomino = [domino[0], domino[1]]..sort();
    count += dominoCounts[sortedDomino] ?? 0;
    dominoCounts[sortedDomino] = (dominoCounts[sortedDomino] ?? 0) + 1;
  }

  return count;
}

void main() {
  final dominoes = [
    [1, 2],
    [2, 1],
    [3, 4],
    [5, 6],
  ];

  final result = numEquivalentDominoPairs(dominoes);
  print(result); // Output: 2 (Equivalent pairs: [1,2] and [2,1])
}
