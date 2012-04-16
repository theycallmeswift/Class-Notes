# Breadth First Search

Runs in `O(|E| + |V|)` time

    BFS = (G) ->
      for v in G.Vertexes
        distance[v] = Infinity;

      s = G.Vertexes.first
      distance[s] = 0
      q = new Queue
      q.enqueue(s)

      while(!q.empty())
        v = q.dequeue()
        for edge in v.edges
          if distance[edge.vertex] == Infinity
            q.enqueue(edge.vertex)
            distance[edge.vertext] = distance[v] + 1

NOTE: Nodes not reachable from the starting node are ignored

# Dijkstra's Algorithm

## Priority Queue

Valid opperations:

 - __Insert__: Add new element to the set
 - __Decrease-key__: Decrease the value of a given node
 - __Delete-Min__: Return the element with the smallest key and remove it
 - __Make-Queue__: Build a priority queue out of a list of nodes

## Algorithm

    Dijkstra = (G) ->
      for vertex in G.vertexes
        dist[vertex] = Infinity
        prev[vertex] = null
      dist[G.vertexes.first] = 0

      q = new PriorityQueue(G.vertexes, 'distance')
      while(!q.empty())
        curr = q.dequeue()
        for edge in curr.edges
          if dist[edge.vertex] > dist[curr] + length(edge.vertex, curr)
            dist[edge.vertex] = dist[curr] + length(edge.vertex, curr)
            prev[edge.vertex] = curr
            q.setKey(edge.vertex, dist[edge.vertex])

    ShortestPath = (G, start, fin) ->
      prev = Dijkstra(G)
      curr = fin

      while(curr != null)
        console.log(curr)
        curr = prev[curr]

## Running time

Running time depends on the implementation of the Priority Queue. See page 114
in book.
