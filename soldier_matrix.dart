class Solution {
  List<int> kWeakestRows(List<List<int>> mat, int k) {
    List<int> powers = [];
    for (int i = 0; i < mat.length; i++) {
      int count = 0;
      for (int j = 0; j < mat[i].length; j++) {
        if (mat[i][j] == 1) {
          count++;
        }
      }
      powers.add(count);
    }
    List<int> result = [...powers]..sort();
    List<int> indices = [];
    for (int i = 0; i < k; i++) {
      var index = powers.indexOf(result[i]);
      indices.add(index);
      powers[index] = -1;
    }
    return indices;
  }
}

void main() {
  Solution solution = Solution();
  List<List<int>> mat = [
    [1, 1, 0, 0, 0],
    [1, 1, 1, 1, 0],
    [1, 0, 0, 0, 0],
    [1, 1, 0, 0, 0],
    [1, 1, 1, 1, 1]
  ];
  int k = 3;

  List<int> result = solution.kWeakestRows(mat, k);
  print("The indices of the $k weakest rows are: $result");
}
 