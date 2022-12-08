Iterate through a sorted list of edge lengths, and add these edges in the graph, provided no edge addition creates a cycle. If such an edge is found, ignore it and go to the next length in edge length list.
The algorithm ends when all nodes are covered.

```
sort edges in inc. order of length
T = NULL
for i = 1 to m:
    if {e_i} U T is a tree:
        T = T U {e_i}
return T
```
#How_to_check_if_a_cycle_is_formed_when_an_edge_is_included_in_the_tree ?

---
Assuming distinct edge lengths
$$
\begin{align*}
\text{Kruskal edges: } &g_1,<g_2< g_3 ...< g_{n-1} \\
\text{Edges of assumed best tree : } &f_1<f_2<f_3...<f_{n-1}
\end{align*}
$$
Assume $g_k = f_k \forall k\leq i$
1. Suppose $g_i < f_i$, then $g_i$ cannot be equal to any $f_k$ for $k>i$, since $f_k>f_i \space\forall\space k>i$. Hence, this cannot occur.
2. 

![|400](https://i.imgur.com/Ks1oWkJ.png)

![|400](https://i.imgur.com/PMAOPzU.png)

> Is the MST unique ? -> **Yes only if edge lengths are distinct**

---
#How_to_check_if_a_cycle_is_formed_when_an_edge_is_included_in_the_tree ?
#### How to check if a cycle is formed when $e=(u,v)$ is included in a tree ?
Cycle is formed iff u and v are already connected. 
-> u and v should be in same connected component.

**Here's a data structure for that is** ->
(Try and maintain a collection of connected components)

When adding an edge (a,b), check if a and b are present in the same connected component. If yes, a cycle is formed, else not.

---
```
sort the edges in increasing order of length
    e_1<e_2<e_3...<e_m
for i=1 to m:
    let e_i = (u,v)
    if (find(u) != find(v)):
        T = T U {e_i}
        union(find(u),find(v))
```

U = {a,b,c,d,e,f}
union(find(a),find(b))

#union_left