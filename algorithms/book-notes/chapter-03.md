# Representing Graphs

## Adjacemcy Matrix

The presence of an edge can be checked in constant time, but building the
structure requires `O(n^2)` space.

## Adjacency List

Total size of an adjacency list is `O(|E|)`.  We can no longer make lookups in
constant time.

# Depth First Search

Takes `O(|V| + |E|)` time.

    DFS = (G) ->
      for v in G.Vertexes
        v.visited = false

      for v in G.Vertexes
        Explore(v) unless v.visited

    Explore = (V) ->
      V.visited = true
      previsit(V)
      for edge in V
        Explore(edge.vertex) unless edge.vertex.visited
      postvisit(V)

We can use DFS to identify Connected Components by marking them every time the
DFS function calls `Explore`.

We can determine if a Graph is Acyclic using DFS as well.  We know there is a
cycle whenever we detect an edge that points to a node we have already
visited.

## Topological Sort

We can order graphs topologically by performing a DFS and then listing the
nodes in decreasing Postvisit order.

# Strongly Connected Components

__Connectivity:__ Two nodes u and v are connected if there is a path from u to
v and from v to u.

Identifying SCCs:

 1) Reverse G into G^R
 2) Run DFS on G^R
 3) Relabel the nodes of G using decreasing postvisit order
 4) Run DFS on the newly labeled G

Every time there is a jump on the new G, we have found a SCC.
