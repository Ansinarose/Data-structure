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

/***********************************************selectionsort using string****************************************************************** */


// List<dynamic> selectionsort(List<dynamic> arr){
//   for(int i=0;i< arr.length-1;i++){
//     dynamic min = i;
//     for(int j=i+1;j<arr.length;j++){
//       if(arr[j].compareTo(arr[min]) < 0){
//       min = j;
//         }
//         }
//   dynamic temp = arr[min];
//   arr[min] = arr[i];
//   arr[i]=temp;
// }
// return arr;
// }
// void main(){
//    List<dynamic> arr = ['apple','pineapple','jackfruit','strawberry'];
//   print(selectionsort(arr));
//  }
