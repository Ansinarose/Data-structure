import 'dart:ffi';

class Node{
  dynamic data;
  Node? next;
  Node(this.data);
}
class Queue{
  Node? front;
  Node? rear;
  late int size;

  Queue(){
    front = null;
    rear = null;
    size =0;
  }
  bool isempty(){
    return size == 0;
  }
  int Size(){
    return size;
  }

  void enqueue(dynamic data){
    Node newnode= Node(data);
    if(rear == null){
      front = newnode;
      rear = newnode;
    }else{
      rear!.next = newnode;
      rear = newnode;
    }
    size++;
 }
 dynamic dequeue(){
  if(front == null){
    return null;
  }
  dynamic data = front!.data;
  front = front!.next;
  if(front == null){
    rear == null;
  }
  size--;
  return data;
 }
 dynamic peak(){
  if(front != null){
    return front!.data;
  }else{
    return null;
  }
 } 

}
void main(){
  Queue queue = Queue();
  queue.enqueue(10);
  queue.enqueue(20);
  queue.enqueue(30);

  print(queue.dequeue());
  print(queue.dequeue());
 print('size of the queue is: ');
 print(queue.Size());

 print(queue.peak());
}