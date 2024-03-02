//stack push

// class Node{
//   dynamic data;
//   Node? next;
//   Node(this.data);
// }


// class Stack{
//   Node? top;
//   void push (dynamic data){
//     Node newNode = Node(data);
//     if(top == null){
//       top = newNode;
//     }else{
//       newNode.next = top;
//     top =  newNode;
//     }
//   }

// void display(){
//   Node? current = this.top;
//   while(current!=null){
//     print(current.data);
//     current = current.next;
    
//   }
// }
// }
//   void main(){
//     Stack stack = Stack();
//     stack.push(1);
//     stack.push(2);
//     stack.push(3);
//     stack.display();
//   }

// stack pop

class Node{
  dynamic data;
  Node? next;
  Node(this.data);
}


class Stack{
  Node? top;
  void push (dynamic data){
    Node newNode = Node(data);
    if(top == null){
      top = newNode;
    }else{
      newNode.next = top;
    top =  newNode;
    }
  }
 void pop(){
  if(top == null){
    print('stack underflow');
  }else{
  top = top?.next;
 }
 }

void display(){
  Node? current = this.top;
  while(current!=null){
    print(current.data);
    current = current.next;
    
  }
}
}
  void main(){
    Stack stack = Stack();
    stack.push(1);
    stack.push(2);
    stack.push(3);
    stack.pop();
    stack.display();
  }
