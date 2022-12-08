# Random variables
A random *variable* X is defined on a probability space $\{\Omega, \beta, P\}$
$X:\Omega\to\mathbb{R}$

> not actually a variable, but a function instead

- A random variable is an abstraction used when we are more interested in the value associated with the resultant outcomes, rather than the outcome itself.
  So, instead of $s$, we focus on $X(s)$.
- Random variables $X(.)$ also induce a probability function $P_X(.)$

---
**Discrete random variable**: Finite cardinality of the set of range of values
**Continuous random variable**: Uncountably infinite cardinality of the set of range of values

Notation for **events**: 
- $\{X=a\}=\{s\in\Omega: X(s)=a\}$
- $\{X>a\}=\{s\in\Omega: X(s)>a\}$
- $\{a<X<b\}=\{s\in\Omega: a<X(s)<b\}$

So, we can further denote probability $P$ of a given event $E$ as
$$
P_X(X, \text{ where }X\in(a,b)):= P(\{a<X<b\}) = P(\{s\in\Omega: a<X(s)<b\})
$$
![|400](https://i.imgur.com/wRroyTQ.png)

---
[[Cumulative Distribution function]]