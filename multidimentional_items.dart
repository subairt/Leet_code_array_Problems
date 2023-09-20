void main() {
  var count = 0;
  int n = 0;
  var valuekey ='Type';
  var rolevalue= 'computer';
  List<List<String>> items = [
    ['phone', 'blue', 'pexel'],
    ['computer', 'silver', 'phone'],
    ['phone', 'gold', 'iphone']
  ];
  var value = ['Type', 'Color', 'name'];

  for (int i = 0; i < value.length; i++) {
    if (value[i] == valuekey) {
      n = i;
    }
  }

  for (int j = 0; j < items.length; j++) {
    if(items[j][n]==rolevalue){
      count++;
    }
  }
  print(count);
}
