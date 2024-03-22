import 'dart:collection';

class Graph{
  Map<dynamic, List<int>> store = {};
  addvertex(int data){
    store.putIfAbsent(data, () => []);
  }
  insert(int vertex, int edge, bool isbidirection){
    if(!store.containsKey(vertex)){
      addvertex(vertex);
    }
    if(!store.containsKey(edge)){
      addvertex(edge);
    }
    if(!store[vertex]!.contains(edge)){
      store[vertex]?.add(edge);
    }
    if(isbidirection && vertex != edge && !store[edge]!.contains(vertex)){
      store[edge]?.add(vertex);
    }
  }
  display(){
    for(int i in store.keys){
      print('$i : ${store[i]!.join(' ')}');
    }
  }
  bfs(int vertex){
    Set<int> visited = {};
    List<int>   queue = [];
    queue.add(vertex);
    visited.add(vertex);
    while(queue.isNotEmpty){
      int current = queue[0];
      queue.removeAt(0);
      for(int i in store[current]!){
        if(!visited.contains(i)){
          visited.add(i);
              queue.add(i);
        }
      }
    }
    print(visited);
  }
}
void main(){
  Graph graph = Graph();
  graph.insert(10, 1, true);
   graph.insert(10, 2, false);
    graph.insert(20, 1, true);
     graph.insert(30, 3, true);
      graph.insert(40, 1, false);
       graph.insert(50, 1, true);
     graph.display();
     graph.bfs(10);
}