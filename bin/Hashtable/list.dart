class Node {
  dynamic key;
  dynamic value;
  Node? next;

  Node(this.key, this.value);
}

class HashTable {
  late List<Node?> table;
  late int size;

  HashTable(int size) {
    this.size = size;
    table = List<Node?>.filled(size, null);
  }

  int hashFunction(dynamic key) {
    return key.hashCode.abs() % size;
  }

  void insert(dynamic key, dynamic value) {
    int index = hashFunction(key);
    Node newNode = Node(key, value);
    if (table[index] == null) {
      table[index] = newNode;
    } else {
      Node? current = table[index];
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
  }

  void printtable() {
    for (int i = 0; i < table.length; i++) {
      Node? current = table[i];
      print('Index $i:');
      while (current != null) {
        print('${current.key}: ${current.value}');
        current = current.next;
      }
    }
  }

  dynamic search(dynamic key) {
    int index = hashFunction(key);
    Node? current = table[index];
    while (current != null) {
      if (current.key == key) {
        return current.value;
      }
      current = current.next;
    }
    return null;
  }

  void update(dynamic key, dynamic value) {
    int index = hashFunction(key);
    Node? current = table[index];
    while (current != null) {
      if (current.key == key) {
        current.value = value;
        return;
      }
      current = current.next;
    }
    insert(key, value); // If key not found, insert it
  }

  void remove(dynamic key) {
    int index = hashFunction(key);
    if (table[index] == null) return; // Nothing to remove
    if (table[index]!.key == key) {
      table[index] = table[index]!.next; // Remove first node if it's the target
      return;
    }
    Node? current = table[index];
    while (current!.next != null) {
      if (current.next!.key == key) {
        current.next = current.next!.next; // Remove node by skipping it
        return;
      }
      current = current.next;
    }
  }
}

void main() {
  HashTable hashTable = HashTable(10);
  hashTable.insert(1, 20);
  hashTable.insert(0, 60);
  hashTable.insert('annsina', 30);
  hashTable.update(1, 50);
  hashTable.remove(0);
  dynamic result = hashTable.search(1);
  if (result != null) {
    print('Value found: $result');
  } else {
    print('No value present');
  }
  hashTable.printtable();
}
