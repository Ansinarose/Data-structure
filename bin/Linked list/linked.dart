//*********************************************SINGLY LINKED LIST****************************************************************************** */
class Node{
  int data;
  Node? next;
  Node(this.data,[this.next]);
}
class Slinkedlist{
  Node? head;
  Slinkedlist([this.head]);

  void addNodeAtBeginning(int value){
    final newNode = Node(value);
    if(head == null){
      head = newNode;
    }
    }
void addnode(int value){
  final newNode = Node(value);
    if(head == null){
      head = newNode;
    }
    else{
      var temp = head;
      while(temp!.next != null){
   temp = temp.next;
      }
      temp.next = newNode;
      temp = newNode;
    }
    }
void addNodeAtEnd(int value){
  final newNode = Node(value);
  var temp = head;
  while(temp!.next != null){
    temp = temp.next;
  }
  temp.next = newNode;
  temp = newNode;
  }
void deleteNode(int value){
  if(head == null){
    return;
  }
  if(head!.data == value){
    head = head!.next;
    return;
  }
  var temp = head;
  while(temp!.next != null){
    if(temp.next!.data == value){
    temp.next= temp.next!.next;
    return;
    }
    temp = temp.next;
  }
}
void insertAfter(int value, int insertaftervalue){
  final newNode = Node(value);
  if(head == null){
    head = newNode;
    return;
  }
  var temp = head;
  while(temp != null){
    if(temp.data == insertaftervalue){
      newNode.next = temp.next;
      temp.next = newNode;
    }
    temp = temp.next;
  }
  }
void insertBefore(int value, insertBeforevalue){
  final newNode = Node(value);
  if(head == null){
    head = newNode;
    return;
  }
  if(head!.data == insertBeforevalue){
  newNode.next = head;
  head = newNode;
  return;
  }
  var temp = head;
  while(temp!.next != null){
  if(temp.next!.data == insertBeforevalue){
    newNode.next = temp.next;
    temp.next= newNode;
    return;
  }
  temp = temp.next;
  }
}
void reverseList(){
  if(head == null){
    return;
  }
  var temp = head;
  Node? previous;
  Node? Nextnode;

  while(temp != null){
    Nextnode = temp.next;
    temp.next = previous;
    previous = temp;
    temp= Nextnode;
  }
  head = previous;
  }
  void removeDuplicates(){
    var temp =head;
    while(temp != null && temp.next != null){
      if(temp.data == temp.next!.data){
        temp.next = temp.next!.next;

      }else{
        temp = temp.next;
      }
      }
       }

  List<int> converttoarray() {
   List<int> array = [];
   var temp = head;
   while(temp != null){
    array.add(temp.data);
    temp = temp.next;
   }
   return array;
  }
  Node? findMiddle(){
    Node? slow = head;
    Node? fast = head;

    while(fast != null && fast.next !=null){
      slow = slow!.next;
      fast = fast.next!.next;

    }
    return slow;

  }
  
 void printList(){
  var temp = head;
  while(temp !=null){
    print(temp.data);
    temp = temp.next;
  }
 }

}
void main(){
  var slinkedlist = Slinkedlist();
  slinkedlist.addNodeAtBeginning(10);
  slinkedlist.addnode(20);
  slinkedlist.addnode(30);
  slinkedlist.addnode(40);
  slinkedlist.addnode(50);
  slinkedlist.addnode(60);
  slinkedlist.addnode(60);
  slinkedlist.addNodeAtEnd(70);
  // slinkedlist.deleteNode(10);
  // slinkedlist.deleteNode(20);
  // slinkedlist.deleteNode(30);
  slinkedlist.insertAfter(80, 40);
  slinkedlist.insertBefore(80, 40);
  //slinkedlist.reverseList();
  slinkedlist.removeDuplicates();
  
  slinkedlist.printList();
List<int> array = slinkedlist.converttoarray();
print('$array');

 Node? middleNode = slinkedlist.findMiddle();
 if(middleNode != null){
  print('middle node: ${middleNode.data}');
 }
  
}
/**********************************************DOUBLY LINKED LIST************************************************************************** */




// class Node{
//   int data;
//   Node? prev;
//   Node? next;

//   Node(this.data,[this.prev,this.next]);
// }

// class Doublelinkedlist{
//   Node? head;
//   Doublelinkedlist([this.head]);

//   void addnodeatbeginning(int value){
//     final newNode = Node(value);
//     newNode.next = head;
//     if(head !=null){
//      head!.prev = newNode;
//     }
//     head = newNode;
//   }
//   void addNodeAtEnd(int value){
//     final newNode = Node(value);
//     if(head == null){
//      head = newNode;
//      return;
//     }
//     var temp = head;
//     while(temp!.next !=null){
//     temp = temp.next;
//     }
//     newNode.prev = temp;
//     temp.next = newNode;
//   }
//   void deleteNode(int value){
//     if(head == null){
//       return;
//     }
//     if(head!.data == value){
//       head = head!.next;
    
//     if(head != null){
//       head!.prev = null;
//     }
//        return;
//     }
//     var temp = head;
//     while(temp!.next !=null){
//      if(temp.next!.data == value){
//       temp.next = temp.next!.next;
//       if(temp.next !=null){
//         temp.next!.prev = temp;

//       }
//       return;
//      }
//      temp = temp.next;
//     }
//   }

// void insertAfter(int value, int x) {
//   final newNode = Node(value);
//   if(head == null){
//     head = newNode;
//     return;
//   }
//   var temp = head;
//   while (temp != null) {
//     if (temp.data == x) {
//       newNode.next = temp.next;
//       newNode.prev = temp;
//       if (temp.next != null) {
//         temp.next!.prev = newNode;
//       }
//       temp.next = newNode;
//       return;
//     }
//     temp = temp.next;
//   }
// }
// void insertBefore(int value, int x) {
//   final newNode = Node(value);
//   if (head == null) {
//     head = newNode;
//     return;
//   }
//   if (head!.data == x) {
//     newNode.next = head;
//     head!.prev = newNode;
//     head = newNode;
//     return;
//   }
//   var temp = head;
//   while (temp != null) {
//     if (temp.next != null && temp.next!.data == x) {
//       newNode.next = temp.next;
//       newNode.prev = temp;
//       temp.next!.prev = newNode;
//       temp.next = newNode;
//       return;
//     }
//     temp = temp.next;
//   }
// }


//  void printList(){
//   var temp = head;
//   while(temp != null){
//     print(temp.data);
//     temp = temp.next;
// }

// }
// void reverse() {
//   var temp = head;
//   while(temp!.next !=null){
//     temp = temp.next;
//   }
//   while(temp !=null){
//     print(temp.data);
//     temp = temp.prev;
//   }
// }
// void removeduplicates(){
//   var temp = head;
//   while(temp !=null && temp.next !=null){
//     if(temp.data == temp.next!.data){
//       temp.next = temp.next!.next;
//       if(temp.next !=null){
//         temp.next!.prev = temp;
//       }
//       }else{
//         temp = temp.next;
//       }
//     }
//   }
// Node? findMiddle() {
//   if (head == null) {
//     return null;
//   }
  
//   Node? slow = head;
//   Node? fast = head;

//   while (fast != null && fast.next != null) {
//     slow = slow!.next;
//     fast = fast.next!.next;
//   }

//   return slow;
// }
//     //convert linkedlist to array

//     List<int> converttoarray(){
//       List<int> array = [];
//       var temp = head;
//       while(temp != null){
//         array.add(temp.data);
//         temp = temp.next;
//       }
//       return array;
//     }
// }
// void main(){
//  var doublelinkedlist = Doublelinkedlist();

//  doublelinkedlist.addNodeAtEnd(10);
//  doublelinkedlist.addNodeAtEnd(40);
//  doublelinkedlist.addNodeAtEnd(50);
//  //doublelinkedlist.addNodeAtEnd(60);
//  //doublelinkedlist.printList();
//  doublelinkedlist.addnodeatbeginning(20);
//   //doublelinkedlist.printList();
//   //doublelinkedlist.deleteNode(10);
//   //doublelinkedlist.insertAfter(30, 20);
//  // doublelinkedlist.insertBefore(60, 50);
//  doublelinkedlist.printList();
// // doublelinkedlist.reverse();
// // doublelinkedlist.printList();
//  //doublelinkedlist.removeduplicates();
//  //doublelinkedlist.printList();
//  //doublelinkedlist.printList();
//  Node? middleNode = doublelinkedlist.findMiddle();
  
//   if (middleNode != null) {
//     print('Middle Node: ${middleNode.data}');
//   } else {
//     print('List is empty or has only one node.');
//   }
// ;;

// List<int> array = doublelinkedlist.converttoarray();
// print('linked list as array : $array');
// }

//*****************************************Reverse Name using singly linked list***************************************************************** */

// class Node{
//   String data;
//   Node?next;
//   Node(this.data,[this.next]);
// }
// class Slinkedlist{
//   Node? head;
//    Slinkedlist([this.head]);
//   void addname(String name){
//     final newNode= Node(name);
//     if(head == null){
//       head = newNode;
//       return;
//     }
//     var temp = head;
//     while(temp!.next != null){
//       temp = temp.next;
//     }
//     temp.next = newNode;
//     temp = newNode;
//   }

//   void printList(){
//     var  temp = head;
//     while(temp != null){
//       print(temp.data);
//       temp = temp.next;
//     }
//   }
//  void reversename(){   
//   if(head == null){
//     return;
//   }           
//   Node? prev ;
//   Node? nextnode;
//   var temp = head;
//   while(temp != null){
//     nextnode = temp.next;
//     temp.next=prev;
//     prev = temp;
//     temp =nextnode;
//   }
// head = prev;

//  }
// }
// void main(){
//   var singlyLinkedList = Slinkedlist();
//   singlyLinkedList.addname('A');
//   singlyLinkedList.addname('N');
//   singlyLinkedList.addname('S');
//   singlyLinkedList.addname('I');
//   singlyLinkedList.addname('N');
//   singlyLinkedList.addname('A');
//   singlyLinkedList.printList();
//   singlyLinkedList.reversename();
//   singlyLinkedList.printList();
// }