class Solution {
  int findTheDistanceValue(List<int> arr1, List<int> arr2, int d) {
      int count = 0;
      for(int i=0; i<arr1.length; i++){
          int flag = 0;
          for(int j=0; j<arr2.length; j++){
              if((arr1[i]-arr2[j]).abs() <= d){
                  flag = 1;
                  break;
              }
          }
          if(flag==0) count++;
      }
      return count;
  }
}
void main() {
  Solution solution = Solution();

  List<int> arr1 = [4, 5, 8];
  List<int> arr2 = [10,9,1,8];
  int d = 2;

  int result = solution.findTheDistanceValue(arr1, arr2, d);
  print("Count: $result"); 
}
