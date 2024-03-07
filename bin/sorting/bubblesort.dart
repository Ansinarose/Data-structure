 List<int> bubblesort(List<int> arr){
  for(int i=0;i<arr.length-1;i++){
    for(int j=0;j<arr.length-i-1;j++){
      if(arr[j]< arr[j+1]){
        int temp = arr[j];
        arr[j]=arr[j+1];
        arr[j+1]= temp;
      }
    }
    }
  return arr;
}
void main(){
  List<int> array = [10,20,8,2,3,7,9];
  print('bubble sort: ${bubblesort(array)}');
}

/**********************************************************bubblesort in string************************************************************** */

// List<dynamic> bubblesort(List<dynamic> arr){
//   for(int i=0;i< arr.length-1;i++){
//     for(int j=0;j<arr.length-i-1;j++){
//       if(arr[j].compareTo(arr[j+1])> 0){
//         dynamic temp = arr[j];
//         arr[j] = arr[j+1];
//         arr[j+1] = temp;
//       }
//     }
//   }
//   return arr;
// }
// void main(){
//   List<dynamic> arr = ['apple','pineapple','jackfruit','strawberry'];
//   print(bubblesort(arr));
// }