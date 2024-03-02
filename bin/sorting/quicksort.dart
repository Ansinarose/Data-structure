List<int> quicksort(List<int> array,int start,int end){
  if(start < end){
    int pivot = partition(array,start,end);
    quicksort(array, start, pivot-1);
    quicksort(array, pivot+1, end);
  }
  return array;
}
int partition(List<int> array,int start,int end){
  int pivot = array[end];
  int i = start-1;
  for(int j=start;j<=end-1;j++){
    if(array[j] < pivot){
      i++;
      int temp = array[i];
   array[i] = array[j];
   array[j] = temp;
    }
  }
  int temp = array[i+1];
  array[i+1] = array[end];
  array[end]= temp;
  return i+1;
}

void main(){
  List<int> array = [1,4,2,3,7,5];
  List<int> quicksorted = quicksort(List.from(array), 0, array.length-1);
  print('quicksort: $quicksorted');
}