class Graph{
  Map<dynamic, List<int>> store ={};
  addvertex(int data){
    store.putIfAbsent(data, () => []);
  }
  insert(int vertex,int edge,bool isbidirection){
    if(!store.containsKey(vertex)) {
      addvertex(vertex);
    }
    if(!store.containsKey(edge)){
      addvertex(edge);
    }
    
     if (!store[vertex]!.contains(edge)) { // Check if edge already exists in the adjacency list
      store[vertex]?.add(edge);
    }
    if (isbidirection && vertex != edge && !store[edge]!.contains(vertex)) { // Check bidirection and avoid self-loop
      store[edge]?.add(vertex);
    }
  }
  void deleteVertex(int vertex){
    store.remove(vertex);
    store.values.forEach((element) => element.remove(vertex));
  }
  display(){
    for(int x in store.keys){
      print('$x : ${store[x]!.join(' ')}');
    }
  }
}
void main(){
  Graph graph = Graph();
   graph.insert(3, 5, true);
  graph.insert(3, 4, true);
  graph.insert(5, 5, true);
  graph.insert(5, 7, false);
  graph.insert(4, 8, false);
  graph.insert(4, 9, false);
  graph.insert(5, 18, false);
  graph.insert(5, 14, false);
    graph.display();
  graph.deleteVertex(5);
  graph.display();
}




