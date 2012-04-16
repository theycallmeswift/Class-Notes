# Minimum Spanning Trees

## Properties

 1) Removing a cycle edge cannot disconnect a graph
 2) A tree of N nodes has N - 1 edges
 3) Any connected, undirected graph with E = V -1 is a tree
 4) An undirected graph is a tree iff there is a unique path between any 2 nodes

## Kruskal's Algorithm

Start with an empty graph and then repeatedly add the next edge that does not
create a cycle.

Cost: `O(|E| log |V|)` for sorting the edges and `O(|E| log |V|)` for union
and find.
