![400](https://i.imgur.com/ceBC86t.png)
![400](https://i.imgur.com/AuTGUih.png)
![400](https://i.imgur.com/fS1w3ko.png)

![400](https://i.imgur.com/uag3fGU.png)
![400](https://i.imgur.com/zE6WSdW.png)
![400](https://i.imgur.com/m1dddQ0.png)

### Algorithm:
```
for all v:
    for all w adjacent to v:
        d[v] = min(d[v], d[w]+l(u,w))
```

Running time: O(mn)

#### Correctness:

**Claim**:
If a vertex gets a certain distance label $d$ in round $r$, then we have found a path of length $d$ from $s$ to $v$.

**Inductive proof**:
![400](https://i.imgur.com/bSMcKid.png)


### Similar implementation:
![400](https://i.imgur.com/kb2Qeyj.png)

---
## APSP: All pairs shortest path
![400](https://i.imgur.com/8yldlgp.png)

---