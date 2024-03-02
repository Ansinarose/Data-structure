List<int> mergesort(List<int> array){
  if(array.length <=1){
    return array;
  }
  int mid = array.length ~/ 2;
  List<int> left = array.sublist(0,mid);
  List<int> right = array.sublist(mid);
  return merge(mergesort(left),mergesort(right));
}
List<int> merge(List<int> left,List<int> right){
  List<int> result = [];
  int i=0;
  int j=0;
  while(i < left.length && j< right.length){
  if(left[i] < right[j]){
    result.add(left[i]);
    i++;
  } else{
    result.add(right[j]);
    j++;
  }
  }
  while(i < left.length){
    result.add(left[i]);
    i++;
  }
  while(j < right.length){
    result.add(right[j]);
    j++;
  }
  
  return result;
}
void main(){
  List<int> array = [2,6,1,9,3,8];
  List<int> sort = mergesort(List.from(array));
  print('mergesort: $sort');
}