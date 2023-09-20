

void main() {
  List<int> arr = [ 1, 2, 4, 5, 8, 34, 2, 4];
  int negativeSmall = 0;
  int small=arr[0];
  
  for (int i = 0; i < arr.length - 1; i++) {
    if (small> arr[i + 1] && arr[i + 1] != 0 && arr[i + 1] > 0) {
      small= arr[i + 1];
    }
    if (negativeSmall > arr[i + 1] && arr[i + 1] != 0 && arr[i + 1] < 0) {
      negativeSmall = arr[i + 1];
    }
  }
  if(negativeSmall ==0){
    print(small);
  }else{
     int negativefar =0;
     for(int i=negativeSmall;i<=0;i++){
      negativefar++;
     }
     int far =0;
     for(int i =0;i<=small;i++){
      far++;

     }
     if(negativefar == far){
      print(small);
     }
     if(negativefar<far){
      print(negativeSmall);
     }else{
      print(small);
     }

  }


}
