# Linear Regression

### Simple LR
Thus, we can consider a corresponding approximate equation
$$
h(\textbf{x}) = \sum_i^n{\Theta_i x_i} = \langle \Theta,\textbf{x} \rangle
$$
, where $x_i$ represent different components of the $\textbf{x}$-vector

Consider the given sample points $(\textbf{x}^{(i)},\textbf{y}^{(i)})$, for $i=1\rightarrow N$.
Using these, we have to best predict the 

### Notations
$$
\begin{align*}
\Theta &= \text{parameter vector} \\
m &= \text{\# Training samples} \\
n &= \text{\# No of features} \\
x &= \text{\# input/feature} \\
y &= \text{\# output/target variable} \\
\end{align*}
$$

## Formulating the problem

Choose $\Theta$ such that 
$$
J(\Theta) = \frac{1}{2}\sum_{i=1}^{m}{(h(\textbf{x}^{(i)}) - \textbf{y}^{(i)})^2}
$$ is minimum.

**Note**: Why not sum of power 4, or mod ? We will prove it later.

## Estimating theta
---
### 1. (Batch) Gradient Descent
Basically, start with some $\Theta = \Theta_0$, then change $\Theta$ such that $J(\Theta)$ decreases.
$$
\Theta_{k+1} = \Theta_k - \alpha\cdot\frac{\partial J(\Theta)}{\Theta_k}
$$, where $\alpha$ is the learning rate, and $m$ is the number of features.

**Derivation**: 

$$
\frac{\partial J(\Theta)}{\Theta_k} = \sum_i^m{(h(\textbf{x}^{(i)})-\textbf{y}^{(i)})\cdot{\textbf{x}_{k}^{(i)}}}
$$

![Image](https://i.imgur.com/4ni7vzJ.png)
![Image](https://i.imgur.com/8cAzpd3.png)

### Disadvantages
- For each step, we need to calculate the sum by going over the entire dataset. And so, the overall process is very inefficient for large datasets.

---

## 2. Stochastic Gradient Descent
SGD randomly picks one data point from the whole data set at each iteration to reduce the computations enormously.

It is also common to sample a small number of data points instead of just one point at each step and that is called “mini-batch” gradient descent. Mini-batch tries to strike a balance between the goodness of gradient descent and speed of SGD.

```
repeat {
  for i=1 to m {
    theta -= alpha.(h(x^(i)) - y^(i)).x^(i)_(j)
  }
}
```

![Image](https://i.imgur.com/qTuprWx.png)

# Further discussion on SGD ---> [[GD vs SGD]]

---
