List<int> Selectionsort(List<int> array){
  for(int i=0;i<array.length -1;i++){
    int min = i;
    for(int j= i+1;j<array.length;j++){
      if(array[j] < array[min]){
        min = j;
      }
    }
    int temp = array[min];
    array[min]=array[i];
    array[i] = temp;

  }
  return array;
}
void main(){
  List<int> array = [3,1,5,7,4,5,6];
  print('selection sort: ${Selectionsort(array)}');
}