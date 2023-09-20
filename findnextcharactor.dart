void main() {
  List<String> arr = ['a', 'c', 'd', 'e', 'f'];

  String target = 'a';
  for (var i = 0; i < arr.length; i++) {
    var y = target.codeUnitAt(0);
    var j = arr[i].codeUnitAt(0);

    if (y < j) {
      print('Next big character: ${arr[i]}');
      break;
    }
  
  }
}
