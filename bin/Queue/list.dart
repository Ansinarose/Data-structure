class Queue{
  List elements = [];

  void enqueue(dynamic data){
    elements.add(data);
  }
 dynamic dequeue(){
  if(elements.isNotEmpty){
    return elements.removeAt(0);
  }else{
    return null;
  }
 }

int size(){
  return elements.length;
}
dynamic peak(){
  if(elements.isNotEmpty){
    return elements[0];
  }else{
    return null;
  }
}
void clear(){
  elements.clear();
}
}

void main(){
  Queue queue = Queue();
  queue.enqueue(10);
  queue.enqueue(20);
  queue.enqueue(30);

  print(queue.dequeue());
  print(queue.dequeue());
  print(queue.dequeue());
  print(queue.dequeue());

  print(queue.size());
  
}