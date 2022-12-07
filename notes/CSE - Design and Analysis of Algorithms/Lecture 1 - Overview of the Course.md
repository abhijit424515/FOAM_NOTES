# Lecture 1 - Overview of the Course
Can you solve any problem on a computer ?
- Designing a fast algorithm

Approach: 
- Build a mathematical model of a computer
- Study the properties of algorithms on this model
- REASON about algorithms
  - Proving properties about algorithms (ex. proving facts about time taken)

Overview:
- Develop the basic framework (ex. what is a "fast" algorithm)
- Techniques for designing fast algorithms
  - Problems from optimization, graph theory, geometry, etc.
  - Unconventional problems (NP-completeness theory)

Books: ?

---

# Today's topic =>
### Problem: 
  Find GCD of 2 given numbers.

**algorithm1**: (Simple factoring algorithm)
**algorithm2**: Euclid 

```
Input: 2 integers m,n
Output: GCD(m,n), aka the largest integers that divides both
```

```
algorithm1: 
- Factorize m: m1 x m2 x m3 ... x m(p)
- Factorize n: n1 x n2 x n3 ... x n(q)
- Find common factors, multiply them and return the answer
```
---

```
algorithm2:
Euclid(m,n){
  while n%m != 0:
    r = n%m
    n = m
    m = r
  end while
  return m
}
```

---

```
ex1. m = 36, n = 48

algorithm1:
  m = 2x2x3x3
  n = 2x2x2x2x3
  common = 2x2x3 = 12

  ---> 9+ divisions (checking for primality)

algorithm2:
  Euclid(m,n){            # (36,48)   (12,36)
    while n%m != 0:       # 12->true  0->false
      r = n%m             # 12
      n = m               # 36
      m = r               # 12
    end while
    return m              #           12
  }

  ---> 2 divisions
```

---

```
ex2. m = 434, n = 966

algorithm1:
  m = 2x7x31
  n = 2x7x139
  common = 2x7 = 14

  ---> 6+ divisions (checking for primality)

algorithm2:
  Euclid(m,n){            # (434,966) (98,434)  (42,98)   (14,42)
    while n%m != 0:       # 98->true  42->true  14->true  0->false
      r = n%m             # 98        42        14
      n = m               # 434       98        42
      m = r               # 98        42        14
    end while
    return m              #                               14
  }

  ---> 4 divisions
```

---

```
Proof of Euclid:
If m divides n, then gcd(m,n) = m
If not, then gcd(m,n) = gcd(n%m, m)

As the loop executes, m and n might change, but there GCD does not

```