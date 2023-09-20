List<int> decompressList(List<int> nums) {
  List<int> result = [];

  for (int i = 0; i < nums.length; i += 2) {
    int freq = nums[i];
    int val = nums[i + 1];
    
    for (int j = 0; j < freq; j++) {
      result.add(val);
    }
  }
  
  return result;
}
void main() {
  List<int> compressedList = [2, 3, 4, 1, 3, 0];
  List<int> decompressedList = decompressList(compressedList);

  print("Compressed List: $compressedList");
  print("Decompressed List: $decompressedList");
}
