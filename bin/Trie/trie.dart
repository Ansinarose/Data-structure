class Node {
  Map<String, Node> children = {};
  bool isEndOfWord = false;

}

class Trie {
  late Node root;

  Trie() {
    root = Node();
  }

  void insert(String word) {
    Node current = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (!current.children.containsKey(char)) {
        current.children[char] = Node();
      }
      current = current.children[char]!;
    }
    current.isEndOfWord = true;
  }

  bool search(String word) {
    Node current = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (!current.children.containsKey(char)) {
        return false;
      }
      current = current.children[char]!;
    }
    return current.isEndOfWord;
  }

  bool isEmptyNode(Node node) {
    return node.children.isEmpty && !node.isEndOfWord;
  }

  bool deleteHelper(Node node, String word, int index) {
    if (index == word.length) {
      if (!node.isEndOfWord) {
        return false;
      }
      node.isEndOfWord = false;
      return isEmptyNode(node);
    }

    String char = word[index];
    if (!node.children.containsKey(char)) {
      return false;
    }

    bool shouldDeletecurrentNode =
        deleteHelper(node.children[char]!, word, index + 1);

    if (shouldDeletecurrentNode) {
      node.children.remove(char);
      return isEmptyNode(node);
    }

    return false;
  }

  void delete(String word) {
    if (word.isEmpty) return;
    deleteHelper(root, word, 0);
  }
}

void main() {
  Trie trie = Trie();
  trie.insert("apple");
  trie.insert("app");
  trie.insert("application");
  
  print(trie.search("apple")); // true
  print(trie.search("app")); // true
  print(trie.search("application")); // true
  print(trie.search("appl")); // false

  trie.delete("app");
  print(trie.search("app")); // false
  print(trie.search("apple"));// true
}