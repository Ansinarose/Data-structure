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


/******************************************************QUICK SORT  using string*********************************************************** */

// import 'sorting/quicksort.dart';

// List<dynamic> Quicksort(List<dynamic> arr, dynamic start,dynamic end){
//       if(start < end){
//         dynamic pivot = partition(arr, start, end);
//         Quicksort(arr, start, pivot-1);
//         Quicksort(arr, pivot+1, end);
//         }
//         return arr;
// }
//         dynamic partition(List<dynamic> arr,dynamic start, dynamic end){
//       dynamic pivot = arr[end];
//       dynamic i = start-1;
//       for(int j= start;j<= end-1;j++){
//          if(arr[j].compareTo(pivot) < 0){
//           i++;
//           dynamic temp = arr[i];
//           arr[i] = arr[j];
//           arr[j] = temp;
//          }

//          }
//          dynamic temp = arr[i+1];
//          arr[i+1] = arr[end];
//          arr[end] = temp;
//          return i+1;
//         }
// void main(){
//  List<dynamic> arr = ['apple','pineapple','jackfruit','strawberry'];
//   List<dynamic> quicksorted = Quicksort(List.from(arr), 0, arr.length-1);
//   print('quicksort: $quicksorted');
// }