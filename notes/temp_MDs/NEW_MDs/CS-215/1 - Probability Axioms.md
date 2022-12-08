# Probability Axioms
A **set** $C$ is an orderless collection of unique objects.
A **set function** $Q$ is a mapping $Q:C\to \mathbb{R}$

An **experiment** is an empirical procedure.
- A **random/statistical experiment** is one whose outcome is uncertain.
- Also, it must be repeatable under the same experimental conditions.

---
A **sample space** $\Omega$ is the set of all possible outcomes of a statistical experiment.
- $\Omega$ can be countably finite, countably infinite, or uncountably infinite.

We define an **event** $E$ as a subset of a sample space.
Events support these operations: 
1. $A\cup B$
2. $A\cap B$
3. $\bar{A}$
4. $A-B$

---
An **event space** $\beta$ is the collection of all possible events pertaining to a given random experiment, which follows these rules:
1. $\phi \in \beta$
2. If events $A_1, A_2, A_3,...$ $\in \beta$, then $\bigcup_{i}{A_i}\in \beta$
3. Event $A \in \beta \implies \bar{A}=\Omega-A \in \beta$
   
Ex. For sample space S = {a,b,c,d}, one possible event space is {$\phi$, {a,b}, {c,d}, {a,b,c,d}}

**Note**: $\beta$ is a subset of the power set of $\Omega$

> In general, such a set $\beta$ is called a *$\sigma$-field* .

---
Since we are interested in the chances of occurence of any given favourable event, we define **probability function** $P:E\to [0,1]$ that gives the probability of occurence of any given event.
- $P(A\cup B) = P(A) + P(B)-P(A\cap B)$
- $P(A-B)=P(A)-P(A\cap B)$

A **probability space** is the triplet $(\Omega,\beta,P)$.

![|400](https://i.imgur.com/02SaR8S.png)


---
For an example, let's consider multiple random experiments (2 for now)
**Case-1:** Two different kind of experiments
    $\Omega' = \Omega_1\times\Omega_2 = \{(s_1,s_2): s_1\in \Omega_1, s_2\in\Omega_2\}$ 
    $\beta'$
**Case-2:** Repeated experiments
    $\Omega' = \Omega\times\Omega = \{(s_1,s_2): s_1\in \Omega, s_2\in\Omega\}$
    $\beta'$

#pending

---
**Joint probability** is simply $P(A \text{ and } B) := P(A,B) := P(A\cap B)$

**Conditional probability** of an event A, given event B is true, is $P(A|B) := P(A\cap B)/P(B)$ 
Ex. 

---
Next -> [[2 - Random variables]]