class Node{
  int value;
  Node? left;
  Node? right;
  Node(this.value);
}

class BinaryTree{
  Node? root;

  void insert(int value){
    root = insertvalue(root, value);
  }
  Node? insertvalue(Node? root, int value){
   if(root == null){
    return Node(value);
   }
   if(value < root.value){
    root.left = insertvalue(root.left, value);
   } else  if(value > root.value){
    root.right = insertvalue(root.right, value);
   }
   return root;
  }
    void preOrderprint(Node? node){
      if(node != null){
        print(node.value);
        preOrderprint(node.left);
        preOrderprint(node.right);
      }
    }
    Node? search(int value){
     return searchvalue(root, value);
    }
    Node? searchvalue(Node? node, int value){
   if(node == null || node.value == value){
    return node;
   }
   Node? leftvalue = searchvalue(node.left, value);
   Node? rightvalue = searchvalue(node.right, value);
   return leftvalue?? rightvalue;
    }

    void delete(int value){
     root = deleteelement(root, value);
    }
    Node? deleteelement(Node? root,int value){
      if(root == null){
        return root;
      }
      if(value < root.value){
        root.left = deleteelement(root.left, value);
      }else if(value > root.value){
        root.right = deleteelement(root.right, value);
      }else{
        if(root.left == null){
           return root.right;
        }else if(root.right == null){
          return root.left;
        }
        root.value = minvalue(root.right!);
        root.right = deleteelement(root.right, value);
      }
      return root;
    }
    int minvalue(Node node){
     int minv = node.value;
     while(node.left != null){
      minv = node.left!.value;
      node= node.left!;
     }
     return minv;
    }

    int closestValue(Node? node,int target){
      int closevalue = node!.value;
      while(node != null){
        if((node.value -target).abs() < (closevalue - target).abs()){
          closevalue = node.value;
        }
        if(node.value == target){
          break;
        }else if(target < node.value){
          node = node.left;
        }else{
          node = node.right;
        }
      }
      return closevalue;
    }

}
void main(){
  BinaryTree binaryTree = BinaryTree();
  binaryTree.insert(10);
  binaryTree.insert(30);
  binaryTree.insert(20);
  binaryTree.insert(40);

  print('Pre-order traversal of the binary tree:');
  binaryTree.preOrderprint(binaryTree.root);

  var searchResult = binaryTree.search(40);
  if(searchResult != null){
    print('Node found : ${searchResult.value}');
  }else{
    print('Node not found');
  }
  binaryTree.delete(10);
  print('pre order traversal after deleting the value is:');
  binaryTree.preOrderprint(binaryTree.root);

  int target = 30;
  int closevalue = binaryTree.closestValue(binaryTree.root, target);
  print('closest value to $target in the binary tree : $closevalue');
}