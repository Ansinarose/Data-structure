class Node {
  var data;
  Node? next;

  Node(this.data);
}

class Stack {
  Node? top;
  int size = 0;

  Stack();

  bool isEmpty() {
    return top == null;
  }

  void push(int data) {
    Node? newNode = Node(data);
    if (isEmpty()) {
      top = newNode;
    } else {
      newNode.next = top;
      top = newNode;
    }
    size++;
  }

  int pop() {
    if (isEmpty()) {
      throw Exception('Stack is empty');
    }
    int data = top!.data;
    top = top!.next;
    size--;
    return data;
  }

  int peek() {
    if (isEmpty()) {
      throw Exception('Stack is empty');
    }
    return top!.data;
  }

  void printStack() {
    Node? current = top;
    print('Stack: ');
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  int getSize() {
    return size;
  }

  bool search(int data) {
    Node? current = top;
    while (current != null) {
      if (current.data == data) {
        return true;
      }
      current = current.next;
    }
    return false;
  }

  void clear() {
    top = null;
    size = 0;
  }
}

void main() {
  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);

  stack.printStack(); // Output: 4 3 2 1

  print('Size: ${stack.getSize()}'); // Output: Size: 4

  print('Is 2 present in the stack? ${stack.search(2)}'); // Output: Is 2 present in the stack? true

  stack.pop();
  stack.printStack(); // Output: 3 2 1

  print('Top element: ${stack.peek()}'); // Output: Top element: 3

  stack.clear();
  stack.printStack(); // Output: 
}
