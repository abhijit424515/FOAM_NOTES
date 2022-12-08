## Mean


---
## Median


---
## Mode


---

### Variance
$$
\begin{align}
Var(x) &= E[(X-E[X]^2)^2] \\
&= E[X^2]-(E[X])^2
\end{align}
$$

#### uniform random variable
X has a uniform distribution over $\{a,a+1,...,b\}$

#### binomial random variable
$$
\begin{align}
E[X^2] &= \sum_{k\geq 0}^n{k^2 \Big(^n_k\Big) p^k q^{n-k}} \\
&= n\sum_{k\geq 1}^n{k \Big(^{n-1}_{k-1}\Big) p^k q^{n-k}} \\
&= n\sum_{k\geq 1}^n{\Big(^{n-1}_{k-1}\Big) p^k q^{n-k}} + n(n-1)\sum_{k\geq 2}^n{\Big(^{n-2}_{k-2}\Big) p^k q^{n-k}} \\
&= np(1-p+np)
\end{align}
$$
Thus, $Var(X) = np(1-p)$

---
#### poisson random variable
$$
\begin{align}
E[X^2] &= \sum_{k\geq 0}{k^2 \frac{1}{k!} \lambda^k e^{-\lambda}} \\
&= \lambda e^{-\lambda}\sum_{k\geq 1}{k \frac{1}{(k-1)!} \lambda^{k-1}} \\
&= \lambda^2 e^{-\lambda}\sum_{k\geq 2}{\frac{1}{(k-2)!} \lambda^{k-2}} + \lambda e^{-\lambda}\sum_{k\geq 1}{\frac{1}{(k-1)!} \lambda^{k-1}} \\
&= \lambda^2 + \lambda
\end{align}
$$
Thus, $Var(X) = \lambda$

---
#### exponential random variable
$$
\begin{align}
E[X^2] &= \int_{0}^{\infty}{\frac{x^2}{\beta} e^{-x/\beta} dx} \\
&= n\sum_{k\geq 1}^n{k \Big(^{n-1}_{k-1}\Big) p^k q^{n-k}} \\
&= n\sum_{k\geq 1}^n{\Big(^{n-1}_{k-1}\Big) p^k q^{n-k}} + n(n-1)\sum_{k\geq 2}^n{\Big(^{n-2}_{k-2}\Big) p^k q^{n-k}} \\
&= np(1-p+np)
\end{align}
$$
Thus, $Var(X) = np(1-p)$

---
#### gaussian random variable
$$
\begin{align}
E[X^2] &= \frac{1}{\sigma \sqrt{2\pi}}\int_{-\infty}^{\infty}{x^2 e^{\Big(-\frac{(x-\mu)^2}{2\sigma^2}\Big)}dx} \\
&= \frac{1}{\sqrt{\pi}}\int_{-\infty}^{\infty}{(\sqrt{2}\sigma t+\mu)^2 e^{-t^2}dt} \\
&= \frac{1}{\sqrt{\pi}}\Big(2\sigma^2\int_{-\infty}^{\infty}{t^2 e^{-t^2}dt} + 2\sqrt{2}\mu\sigma\int_{-\infty}^{\infty}{t e^{-t^2}dt} + \mu^2 \int_{-\infty}^{\infty}{e^{-t^2}dt}\Big) \\
&= \frac{2\sigma^2}{\sqrt{\pi}}\Big(\int_{-\infty}^{\infty}{t^2 e^{-t^2}dt}\Big) + (E[X])^2 \\
&= \sigma^2 + (E[X])^2 \\
\end{align}
$$
Thus, $Var(X) = \sigma^2$

---


# Markov's Inequality
Given X as a random variable with PDF P(.), f(.) be a non-negative function, and c as a positive constant.
$$
P(f(X) \geq c) \leq E[f(X)]/c 
$$

**Proof :**:



---
# Chebyshev's Inequality
Given X as a random variable with PDF P(.), having finite expectation $E[X]$ and finite variance $Var(X)$.
$$
P(|X-E[X]| \geq a) \leq \frac{Var(X)}{a^2}
$$

**Proof :**

$\qquad$ Define random variable $f(X) := (X-E[X])^2$.
$\qquad$ By Markov's inequality, 
$$
P((X-E[X])^2 \geq a^2) \leq \frac{E[(X-E[X])^2]}{a^2}
$$


---

# Jensen's Inequality
Given X as a random variable with PDF P(.). Let f(.) be a convex function.
$$
E[f(X)] \geq f(E[X])
$$

**Proof :**
$\qquad$ Let $m:= E[X]$
$\qquad$ Consider the tangent to f(.) at $[m,f(m)]$
$\qquad$ Let the tangent be $f(X) = aX+b$.

So, 
$$
\begin{align}
E[f(X)] &\geq E[aX+b] \\
&= aE[X]+b \\
&= f(E[X])
\end{align}
$$


---
