int longest(List<int>nums){
  if (nums.isEmpty) return 0;
  int max =1;
  int currentlength =1 ;

  for(int i =1; i<nums.length;i++){
    if(nums[i]>nums[i-1]){
      currentlength++;
      max=max<currentlength?currentlength:max;
    }else{
      currentlength =1;
    }
  }
  return max;
}
void main(){
  List<int>nums = [1,3,5,4,7];
  int result = longest(nums);
  print(result);
}