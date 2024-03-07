
class Node{
  dynamic value;
  dynamic key;
  Node? next;
  Node(this.key,this.value);
}
class HashTable{
  late List<Node?> table;
  late int size;

  HashTable(int size){
    this.size = size;
    table = List<Node?>.filled(size, null);
  }
  int hashFunction(dynamic key){
    return key.hashCode.abs() % size;
  }
  void insert(dynamic key,dynamic value){
    int index = hashFunction(key);
    Node newNode = Node(key, value);
    if(table[index] == null){
      table[index] = newNode;
    }else{
      Node? temp = table[index];
      while(temp!.next != null){
        temp = temp.next;
      }
      temp.next = newNode;
    }
  }
  dynamic search(dynamic key){
    int index = hashFunction(key);
    Node? temp = table[index];
    while(temp != null){
      if(temp.key == key){
        return temp.value;
      }
      temp = temp.next;
    }
  }
  void remove(dynamic key){
    int index = hashFunction(key);
    if(table[index]  == null){
      return;
    }
    if(table[index]!.key  == key){
      table[index] = table[index]!.next;
      return;
    }
    Node? temp = table[index];
    while(temp!.next != null){
      if(temp.next!.key == key){
        temp.next = temp.next!.next;
        return;
      }
      temp = temp.next;
    }
  }
  void update(dynamic key,dynamic value){
    int index = hashFunction(key);
   Node? temp = table[index];
   while( temp != null){
    if(temp.key == key){
      temp.value = value;
      return;
    }
    temp = temp.next;
   }
   insert(key, value);
  }
  void printtable(){
    for(int i =0; i<table.length ;i++){
      Node? temp = table[i];
      // print('Index $i:');
      while(temp != null){
        print("${temp.key}: ${temp.value}");
        temp = temp.next;
      }
    }
  }
}
void main(){
  HashTable hashTable = HashTable(10);
  hashTable.insert(1, 10);
  hashTable.insert(2, 20);
  hashTable.insert(9, 90);
  hashTable.remove(9);
  dynamic result = hashTable.search(2);
  if(result !=null){
    print('value found $result');
  }else{
    print('Value not found');
  }
  hashTable.printtable();
}