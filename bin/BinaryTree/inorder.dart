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
  Node insertvalue(Node? root, int value){
    if(root == null){
      return Node(value);
    }
    if(value < root.value){
      root.left = insertvalue(root.left, value);
    } else if(value > root.value){
      root.right = insertvalue(root.right, value);
    }
    return root;
  }
  void inOrderPrint(Node? node){
    if(node != null){
      inOrderPrint(node.left);
      print(node.value);
     inOrderPrint(node.right);
    }
  }
Node? search(int value){
  return searchvalue(root, value);
}
Node? searchvalue(Node? node, int value){
 if(node == null || node.value == value){
  return node;
 }

Node? leftresult = searchvalue(node.left, value);
Node? rightresult = searchvalue(node.right, value);
return leftresult?? rightresult;
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
    }else if (root.right == null){
      return root.left;
    }
    root.value = minvalue(root.right!);
    root.right = deleteelement(root.right, root.value);
  }
  return root;
}
int minvalue(Node node){
  int minv = root!.value;
  while(node.left!= null){
    minv = node.left!.value;
    node= node.left!;
  }
  return minv;
}
int closestvalue(Node? node,int target){
  int closevalue = node!.value;
  while(node != null){
    if((node.value - target).abs() < (closevalue -  target).abs()){
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
 bool isBST(){
     return BSTornot(root, null, null);
 }
 bool BSTornot(Node? node,int ?min, int? max){
  if(node == null){
    return true;
  }
  if((min != null && node.value <= min) || (max != null && node.value >= max)){
    return false;
  }
  return BSTornot(node.left, min, node.value) && BSTornot(node.right, node.value, max);
 }
}
void main(){
  BinaryTree binaryTree = BinaryTree();
  binaryTree.insert(20);
  binaryTree.insert(40);
  binaryTree.insert(30);
  binaryTree.insert(10);
 
 print('Inorder traversal of binary tree is:');
 binaryTree.inOrderPrint(binaryTree.root);

 var searchResult = binaryTree.search(30);
 if(searchResult != null){
  print('Node found: ${searchResult.value}');
 }else{
  print('Node not found');
 }
 binaryTree.delete(40);
 print('Inorder traversal after deleting the value is:');
 binaryTree.inOrderPrint(binaryTree.root);

  int target = 40;
   int closevalue = binaryTree.closestvalue(binaryTree.root, target);
   print(' closest value is $target in the binary tree $closevalue');

   if (binaryTree.isBST()) {
    print('The binary tree is a Binary Search Tree (BST).');
  } else {
    print('The binary tree is not a Binary Search Tree (BST).');
  }
}