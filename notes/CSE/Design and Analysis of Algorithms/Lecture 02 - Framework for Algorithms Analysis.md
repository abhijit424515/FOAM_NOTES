# Lecture 2 - Framework for Algorithms Analysis

**Basic idea**: Make a mathematical model of a computer, and mentally execute algorithms on this model to evalute the time taken by it.

- What is the **time required** on the model for every operation that an algorithm might perform ?
- What should be the **input data** ?
- How does our model relate to **real computers** ?

---
## Outline of today's lecture
- Formal/informal **definitions** of basic terms
- **Mathematical model**
- **Analysis strategy**
- **Examples** of algorithms and their analysis
- Discussion of **limitations** of the model

---

### Definitions of basic terms:

**Problems**:
- Examples
  - GCD of 2 numbers
  - Finding the shortest path on a map
  - Finding a word in a dictionary
  - Given an X-ray, is there a disease ?
- Specification of what are <u>valid inputs</u>, and what are <u>acceptable outputs</u> for each valid input.
  - **Input instance**: A value x is an input instance for problem P, if x is a valid input as per the specification.
  - **Size of an instance**: 
    - **Formal def**: The number of bits needed to represent the input instance.
    - **Informal def**: (more useful) Any parameter which grows roughly with the formal notion of size.


**Algorithm**: 
- An abstract computation/procedure which takes some values as inputs and produces some values as outputs.
- Program == Expression of an algorithm

---

## Mathematical Model of a computer
- **RAM** --> Random Access Machine
  --> Memory + Processor

How to design algorithms for the RAM model ?
- Variable names allowed
- Arrays, structures allowed : Primitive DTs
- Lists, trees: Complex DTs

### Instruction set of the processor
- For simplicity, assume all instructions **execute in one step**.
- Groups:
  - Arithmetic and Logical operations
    Ex. `A = B + C`
  - Jumps and conditional jumps
    Ex. `if A > B, goto line 30`
  - Pointer instructions
    Ex. `B = *C, *A = C`
    - Array operations
      Ex. `A[I] = B`

---
## More complex algorithmic statements
Ex.
- `A = B + C * D - E` --> 3 steps
- `A[I] = B[I] + C[I]` === `X = B[I], Y = C[I], Z = X + Y, A[I] = Z` --> 4 steps
- MultiDimensional arrays
  - Ex. `C[i,j] = A[i*m+j]`, where `m` is the number of cols --> 3 steps
  - ![Image](https://i.imgur.com/RIsGTzp.png)
  - ![Image](https://i.imgur.com/8zcL3Qg.png)
- ![Image](https://i.imgur.com/D0Rw37R.png)