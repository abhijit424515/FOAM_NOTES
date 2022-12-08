**Algorithm**:
```

```
![600](https://i.imgur.com/iLF57sj.png)

---
## Correctness :
$d[v] = \infty$  initially, for all $v$ except the source.
Take the vertex $u\in \bar{S}$ whose $d[u]$ is minimum.

Let $d[u]$ = length of shortest path from $s$ to $u$ that includes only vertices in $S$.

![400](https://i.imgur.com/91Hc0yV.png)

---
#### Tabular form
![600](https://i.imgur.com/8lDSQFb.png)

---
##### Why does it fail for negative numbers ?
This algorithm uses a priority queue. Hence if we chose positive numbers, the least edge (say going from $u$ to $v$) will not have another path discovered later that is shorter, since lengths add up and any other choice in the first trial will exceed that length. However, it gets violated if we consider negative edge lengths.

#### [Tricking Dijkstra's Algorithm for negative weights](https://math.stackexchange.com/questions/1729792/tricking-dijkstras-algorithm-for-negative-weights)

You could keep track of the depth of each node, then subtract (v.depth * min-weight) when comparing each distance.
I just thought about this on the spot, so I'm NOT SURE IF THIS IS CORRECT
the key steps are in 19-21.

Basically consider that if we simply subtracted the minimum negative value from each edge, the shortest paths ma change. So instead, we can do a `node-depth*min_weight` subtraction in each comparison, basically a compact form for subtracting a dynamic `min_weight` from each edge in the min paths at any given time.

```
00 dijkstra-negative-weights(G(E,V))
01
01     // make every weight positive
02     min-weight = E.getMinWeight()
03     if min-weight < 0
04         for each e in E
05             e.weight -= min-weight
06
06     // initialize 
07     spt-set = []
08     non-spt-set = [all v in V]
09     for each v in non-spt-set
10        v.value = infinity
11        v.depth = infinity
12    first-vertex.value = 0
13    first-vertex.depth = 0
13
14    // compute shortest path
14    while non-spt-set != empty
15        u = non-mst-set.extractMin() // by v.value
16        spt-set.add(u)
17        non-spt-set.remove(u)
18        for each v adjacent to u
19            if [(u,v).edge-weight + u.value] - [(u.depth + 1) * |min-weight|] < v.value
20                v.value = (u,v).edge-weight + u.value
21                v.depth = u.depth + 1
```