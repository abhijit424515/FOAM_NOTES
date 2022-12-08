## DFS
1. If DFS(v) visits all vertices in G, then there exists a path from v to every other vertex in G.
2. There exists a path from every vertex in G to v. But how ?
3. 1 + 2 => G is strongly connected.

For point 2, consider G' as G with edge directions inverted.
Run DFS on G' to check point 2.

![|400](https://i.imgur.com/QONgPj0.png)

---
![|400](https://i.imgur.com/BON1XRJ.png)

Another way to check for **strong connectivity** by performing DFS.
> It is necessary that for every subtree, an edge goes out of it.

We want to find a path from every vertex to the root.
![|400](https://i.imgur.com/XCmO4oM.png)

**Proof**. 
For every vertex x, both it's back edges and cross edges will lead to a vertex w which will have arrival time strictly less than x.
Thus, we can reach the root in a strongly connected component with the **necessary and sufficient** condition that every subtree has an outgoing edge.

---
### How to check that every subtree of a DFS tree has an outedge ?
DFS(v) returns the smallest arrival time to which there is an outedge from the subtree rooted at v.
The procedure stops when the smallest time returned by DFS(v) has arrival time greater than or equal to that of v. 
![|400](https://i.imgur.com/RvOfQ54.png)

```
SC(v):
    visited[v] = 1
    arr[v] = time++
    xyz = arr[v]
    for all w adjacent to v:
        if !visited[w]:
            xyz = min(xyz,SC[w])
        else:
            xyz = min(xyz,arr[w])
    if xyz == arr[v] and v != root:
        exit()
    else:
        return xyz
```

---
### Applications of BFS
1. finding connected components
2. check if G is bipartite.

### Applications of DFS
#### Directed graphs
1. check if G is strongly connected
2. check if G is acyclic
3. topological sort
#### Undirected graphs
1. 2-edge connectivity

#other_applications ?