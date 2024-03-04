
class stack{
  List<int> array = [];
  bool isEmpty(){
    return array.isEmpty;
  }

// for adding values
void push(int value){
   array.add(value);
  }

 // for removing top elements
 int pop(){
  if(isEmpty()){
    throw Exception('stack is empty');
  }
  return array.removeLast();
 }

 // for finding top value
int peak(){
  if(isEmpty()){
    throw Exception('stack is empty');
  }
  return array.last;
}

//findout the size
int size(){
  return array.length;
}

//checking whether a number contains or not
bool contains(int number){
  return array.contains(number);
}

//For reversing the stack elements
void reversed(){
  array = array.reversed.toList();
}

//For clearing all values
void clear(){
  array.clear();
}


@override
String toString(){
  return array.toString();
}
}

void main(){
  stack Stack = stack();
  Stack.push(10);
  Stack.push(20);
  print(Stack);
  print('top element: ${Stack.peak()}');
  print('size of list is ${Stack.size()}');
  print(Stack.contains(20));
  Stack.reversed();
  print(Stack);
  Stack.clear();
  print(Stack);
  
}