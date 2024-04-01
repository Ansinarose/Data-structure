class HeapSort {
  void swap(List<int> arr, int i, int j) {
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
  }

  void heapify(List<int> arr, int n, int i) {
    int largest = i; // Initialize largest as root
    int left = 2 * i + 1; // Left child
    int right = 2 * i + 2; // Right child

    // If left child is larger than root
    if (left < n && arr[left] > arr[largest]) {
      largest = left;
    }

    // If right child is larger than largest so far
    if (right < n && arr[right] > arr[largest]) {
      largest = right;
    }

    // If largest is not root
    if (largest != i) {
      swap(arr, i, largest);

      // Recursively heapify the affected sub-tree
      heapify(arr, n, largest);
    }
  }

  void heapSort(List<int> arr) {
    int n = arr.length;

    // Build heap (rearrange array)
    for (int i = n ~/ 2 - 1; i >= 0; i--) {
      heapify(arr, n, i);
    }

    // One by one extract an element from heap
    for (int i = n - 1; i > 0; i--) {
      // Move current root to end
      swap(arr, 0, i);

      // call max heapify on the reduced heap
      heapify(arr, i, 0);
    }
  }
}

void main() {
  List<int> arr = [12, 11, 13, 5, 6, 7];
  HeapSort heapSort = HeapSort();
  print('Original Array: $arr');

  heapSort.heapSort(arr);

  print('Sorted Array: $arr');
}

//*******************************************************Heapsort using STRINGS********************************************************************

// class Heapsort{
 
//   void swap( List<dynamic> heap ,int i,int j){
//     dynamic temp = heap[i];
//     heap[i] = heap[j];
//     heap[j] = temp;
//   }
//   void heapify( List<dynamic> heap ,int n,int i){
//      int highest = i;
//      int left = 2*i +1;
//      int right = 2*i +2;
//      if(left <n && heap[left].compareTo (heap[highest]) > 0){
//       highest = left;
//      } if(right < n && heap[right ].compareTo( heap[highest]) >0){
//       highest = right;
//      }
//      if(highest != i){
//      swap(heap,i, highest);
//      heapify( heap,n, highest);
//   }
//   }
//   void heaps(List<dynamic> heap){
//     int n = heap.length;
//     for(int i = n ~/ 2 -1;i>=0;i--){
//       heapify(heap, n, i);
//     }
//     for(int i=n-1; i>0;i--){
//       swap(heap,0, i);
//       heapify(heap,i,0);
//     }
//   }
// }
// void main(){
//    List<dynamic> heap = ['apple','orange','jackfruit','grape'];
//   Heapsort heapsort = Heapsort();
 
//   heapsort.heaps(heap);
//   print('$heap');
// }
