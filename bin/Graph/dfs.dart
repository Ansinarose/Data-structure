
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
 
  display(){
    for(int x in store.keys){
      print('$x : ${store[x]!.join(' ')}');
    }
  }
 dfs(int vertex) {
    if (store.containsKey(vertex)) {
      Set<int> visited = {};
      dfshelper(vertex, visited);
      print(visited);
    } else {
      print('vertex not found in graph');
    }
  }

  void dfshelper(int vertex, Set<int> visited) {
    visited.add(vertex);
    for (int i in store[vertex]!) {
      if (!visited.contains(i)) {
        dfshelper(i, visited);
      }
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
    graph.dfs(5);
  graph.display();
}
