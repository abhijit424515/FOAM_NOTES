### Theorem
#### Well ordering of natural numbers
$\exists\space n\space P(n) \iff \exists\space n (P(n) \wedge \forall\space m (P(m) \implies m\geq n))$
Thus, if there exists an n for which P(n) is true, then there exists a smallest such n.

**Note:**
1. For all n $\geq 1$, $\exists\space m$  s.t. $m^2\geq n \implies$ $\exists$ a smallest number $m$ s.t. $m\geq n$
2. Thus, 
   $$
   \begin{align}
   \iff m^2 \geq n &\gt (m-1)^2 \\
   \iff 2n+1 &\gt 2m^2-4m+3 \\
   \iff 2n &\geq 2m^2-4m+3 \geq (m+1)^2 \gt m^2 \geq n \\
   \implies m &\geq 6 \\
   \end{align}
   $$
   Manually verifying, we can say that it holds true $\forall\space m$
3. Thus, if n is prime, we can say that $\exists$ a smallest $k$ s.t. $2k \geq n \geq k$, 
4. 


---
# Solutions
## Tutorial-1
##### 1a
$$
\forall\space n,\exists\space m \gt n \space (prime(m))
$$
##### 1b
$$
\forall\space n,\exists\space m \gt n \space (prime(m) \wedge prime(m+1))
$$

##### 1c
$$
\forall\space n, \big(prime(n) \iff n\space|\space((n-1)!+1)\big)
$$

---
##### 2a
$$
\forall\space n,\exists\space m \gt n \space (prime(m) \wedge prime(m+2))
$$
##### 2b
$$
\forall\space n, \big( ((2\space|\space n) \wedge(n>2)) \implies (\exists\space p,q, (prime(p)\wedge prime(q)\wedge (p+q=n)))\big)
$$
##### 2c
$$
\forall\space n, \exists\space p,q, \forall\space t\in\{0,1,2,...,n\}, prime(p+qt)
$$

##### 2d
$$
\exists\space c, \forall\space n, \exists\space p>q>n, (prime(p)\wedge prime(q)\wedge (p-q \leq c))
$$


---
##### 3
$$
\Bigg(\forall\space n, \big( (\forall\space m<n, P(m)) \implies P(n) \big)\Bigg) \iff \Bigg( \forall\space n, (P(n) \implies P(n+1)) \Bigg)
$$

---
