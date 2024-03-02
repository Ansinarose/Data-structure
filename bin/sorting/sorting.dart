/***********************************************************BUBBLE SORTING********************************************************************* */

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
/***************************************************************INSERTION SORT***************************************************************** */

// List<int> Insertionsort(List<int>array){
//   for(int i = 0;i<array.length;i++){
//     int temp = array[i];
//     int j = i-1;
//     while(j>=0 && array[j] > temp){
//       array[j+1] = array[j];
//       j = j-1;
//     }
//     array[j+1] = temp;

//   }
//   return array;
// }
// void main(){
//   List<int> arr = [6,3,2,5,8,9,0,4];
//   print('insertionsort: ${Insertionsort(arr)}');
// }

/************************************************************SELECTION SORT******************************************************************** */

// List<int> Selectionsort(List<int> array){
//   for(int i=0;i<array.length -1;i++){
//     int min = i;
//     for(int j= i+1;j<array.length;j++){
//       if(array[j] < array[min]){
//         min = j;
//       }
//     }
//     int temp = array[min];
//     array[min]=array[i];
//     array[i] = temp;

//   }
//   return array;
// }
// void main(){
//   List<int> array = [3,1,5,7,4,5,6];
//   print('selection sort: ${Selectionsort(array)}');
// }