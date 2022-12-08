A cut in G is a partition of the vertex set into 2 parts.
Max number of partitions = $2^{n-1}$
No of different cuts = $2^{n-1}-1$

**Claim**: 
For any cut $(S,\bar{S})$, the minimum edge in the cut belongs to MST.

**Proof**: 
By contradiction.
Let T be an MST not containing edge $e=(S,\bar{S})$. 
Let $T' = T \cup e$
Hence, a cycle must have formed using edge e.
We will remove the edge with maximum length to break the cycle.
Since e has minimum length, we can surely say e will not be removed, and so it will be in the MST.
Contradiction.

---
![200](https://i.imgur.com/hSojAUH.png)
![200](https://i.imgur.com/CyhVrzF.png)
![200](https://i.imgur.com/hrr46Ew.png)
![200](https://i.imgur.com/X1zlyoH.png)
![200](https://i.imgur.com/pAd7VIN.png)
![200](https://i.imgur.com/xjHP8QZ.png)
![200](https://i.imgur.com/Lxx5a7d.png)
![200](https://i.imgur.com/z6V8Z5m.png)
 