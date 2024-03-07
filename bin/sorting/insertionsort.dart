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

/******************************************************insertion sort using string*************************************************************** */

// List<dynamic> insertionsort(List<dynamic> arr){
//   for(int i=0;i< arr.length;i++){
//     dynamic temp = arr[i];
//     dynamic j= i-1;
//     while(j >= 0 && arr[j].compareTo(temp) > 0){
//       arr[j+1] = arr[j];
//          j= j-1; 
//     }
//     arr[j+1] = temp;
//   }
//   return arr;
// }
// void main(){
//    List<dynamic> arr = ['apple','pineapple','jackfruit','strawberry'];
//    print(insertionsort(arr));
//  }