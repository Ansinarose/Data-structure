//**************************************************linear search*******************************************************************************//

// int linearsearch(List<int> arr, int target)  {
//   for(int i=0;i< arr.length;i++){
//     if(arr[i] == target){
//       return i;
//     }
//   }
//   return -1;
// }                      
// void main(){
//   List<int> arr = [1,2,3,4,5,6,6,7];
//   print(linearsearch(arr, 4));
// }
//***********************************************Binary search***ITERATION********************************************************************/
                  

// int binarysearch(List<int> arr , int target){
//   int start = 0;
//   int end = arr.length-1;
//   while(start <= end){
//     int mid = start + (end - start)%2;
//     int midvalue =arr[mid];

//     if(midvalue == target){
//       return mid;
//     }else if(midvalue <= target){
//       start = mid+1;
//     }else{
//       end = mid-1;
//     }
// }
//   return -1;
// }                    
// void main(){
//   List<int> arr = [1,2,3,4,5,6,6,7];
//   print(binarysearch(arr, 5));
// }

//**************************************************Binary search****RECURSION**********************************************************************
                      

int searchrecursion(List<int> arr, int target) {
  return recursionhelper(arr, target, 0, arr.length - 1);
}

int recursionhelper(List<int> arr, int target, int start, int end) {
  if (start > end) {
    return -1;
  }

  int mid = (start + end) ~/ 2;
  int midvalue = arr[mid];

  if (midvalue == target) {
    return mid;
  } else if (midvalue < target) {
    return recursionhelper(arr, target, mid + 1, end);
  } else {
    return recursionhelper(arr, target, start, mid - 1);
  }
}

void main() {
  List<int> arr = [1, 3, 5, 6, 9, 10, 25, 36, 48];
  print(searchrecursion(arr,36)); 
}
