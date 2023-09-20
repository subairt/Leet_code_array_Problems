void main(){
  int n =7;
int sum =0;

for(int i =1;i<n;i++){
  if (n % i == 0){
    sum = sum +i;
  }
}
  if(sum == n){
    print('true');
  }else{
    print('false');
  }


}