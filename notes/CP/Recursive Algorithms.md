# Recursive Algorithms

## Generating Subsets

The following recursive function search can be used to generate the subsets. The function maintains a vector 

```cpp
vector<int> subset;
```

that will contain the elements of each subset. The search begins when the function is called with parameter 1.

```cpp
void search(int k) {
  if (k == n+1) {
    // process subset
  } else {
    // include k in the subset
    subset.push_back(k);
    search(k+1);
    subset.pop_back();
    // don’t include k in the subset
    search(k+1);
}
}
```

When the function search is called with parameter k, it decides whether to include the element k in the subset or not, and in both cases, then calls itself with parameter k + 1 Then, if k = n + 1, the function notices that all elements have been processed and a subset has been generated.

![Image](https://i.imgur.com/bquwlID.png)

**Another ref**: [YT-ref](https://www.youtube.com/watch?v=Y85dfkCSlP8)
```python
def rec(arr, i, subset, subsets):
  if i == len(arr):
    subsets.append(subset.copy())
  else:
    rec(arr, i+1, subset + [arr[i]], subsets)
    rec(arr, i+1, subset, subsets)
```

![Image](https://i.imgur.com/ImMtrex.png)

---

