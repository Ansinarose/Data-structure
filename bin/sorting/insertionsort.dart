List<int> Insertionsort(List<int>array){
  for(int i = 0;i<array.length;i++){
    int temp = array[i];
    int j = i-1;
    while(j>=0 && array[j] > temp){
      array[j+1] = array[j];
      j = j-1;
    }
    array[j+1] = temp;

  }
  return array;
}
void main(){
  List<int> arr = [6,3,2,5,8,9,0,4];
  print('insertionsort: ${Insertionsort(arr)}');
}
