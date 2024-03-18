class Minheap{
  List<int> arr = [];

  void swap(int i,int j){
    int temp = arr[i];
    arr[i]= arr[j];
    arr[j] = temp;
  }
  void heapifyup(int i){
    int parent = (i - 1) ~/ 2;
    while(i >0 && arr[i] < arr[parent]){
      swap(i, parent);
      i= parent;
      parent = i-1 ~/ 2;
    }
  }
  void heapifydown(int i){
    int smallest = i;
    int left = 2*i +1;
    int right = 2*i+2;
    if(left < arr.length && arr[left] < arr[smallest]){
      smallest = left;
    }
    if(right < arr.length && arr[right] < arr[smallest] ){
      smallest = right;
    }
    if(smallest != i){
      swap(i, smallest);
      heapifydown(smallest);
    }
  }
  void insert(int value){
    arr.add(value);
    heapifyup(arr.length-1);
  }
  void delete(int value){
    int i = arr.indexOf(value);
    if(i != -1){
      arr[i] = arr.last;
      arr.removeLast();
      heapifydown(i);
    }
  }
  int extractmin(){
    if(arr.isEmpty){
      print('heap is empty');
    }
    int minvalue = arr[0];
    arr[0] = arr.last;
    arr.removeLast();
    heapifydown(0);
    return minvalue;
  }
  int getmin(){
    if(arr.isEmpty){
      print('heap is empty');
    }
    return arr[0];
  }
  int parentIndex(int i){
    if(i == -1){
      return -1;
    }
    return (i-1) ~/ 2;
  }
  int leftindex(int i){
    return (i* 2) +1;
  }
  int rightindex (int i){
    return (i *2)+2;  }

    void displays(int i){
      int parent = parentIndex(i);
      print('Parent index of node at index $i: $parent');
      int left = leftindex(i);
      print('Left child index of node at index $i: $left');
      int right = rightindex(i);
      print('right child index of node at index $i: $right');
    }
    void display(){
      print('heap elements are $arr');
    }
}
void main(){
  Minheap minheap = Minheap();
  minheap.insert(10);
  minheap.insert(20);
  minheap.insert(50);
  minheap.insert(40);
  minheap.insert(30);

  minheap.display();
}