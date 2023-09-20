void main(){
List<int>a=[3,4,5,1,7];
List<String>b = List.filled(a.length, '');

for(int i =0;i<a.length;i++){
  int max=a[0];
  int maxindex=0;
   

   for(int j=0;j<a.length;j++){
    if(max<a[j]){ 
      max = a[j];
      maxindex = j;
    }
   }
   switch(i){
    case 0 : b[maxindex]="gold medol"; break;
    case 1 : b[maxindex]="silver medol"; break;
    case 2 : b[maxindex]="Bronze medol"; break;
    default : b[maxindex]= "${i+1} th medol"; break;
    
   }
   a[maxindex] = -1;

}

print(b);


}