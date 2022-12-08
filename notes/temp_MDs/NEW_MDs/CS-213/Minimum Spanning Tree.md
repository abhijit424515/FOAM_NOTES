Given an undirected graph G(V,E), a spanning **tree** is a **minimum spanning tree** if it contains all vertices V of G, and it's total length is minimum.
For a minimum spanning tree, 
$$
m = n-1
$$
![|400](https://i.imgur.com/PuFAdR4.png)

> Adding any edge in a spanning tree creates a cycle, due to which it fails to be a tree. 

However, for creating a MST, we can simply create any spanning tree, and iterate through all non-tree edges and add them in the graph to create a cycle, then remove the edge of maximum length from the cycle to get an alternate spanning tree with lesser total length.

Here's a better algorithm -> [[Kruskal Algorithm]]
Here's another one -> [[Prim Algorithm]]