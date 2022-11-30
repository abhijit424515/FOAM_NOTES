# Basics of Rust

## 5 Main Features
- Memory Safe
- No null
- No exceptions
- Modern package manager (cargo)
- No data races (for asynchronous coding)

### Basic Data Types
- Booleans
- Integers
  - usize, isize
    - i16/u16 -> 2 bytes
    - i32/u32 -> 4 bytes
    - i64/u64 -> 8 bytes
- Floats
  - f32 -> 4 bytes
  - f64 -> 8 bytes

Use "let" for immutable variables, and "let mut" for mutable ones. 
Use loop {} to make a loop
In rust, brackets are unnecessary for conditional check statements in if, while, etc. 

### Ownership and Borrowing



---

### Other features

| Features | Pros | Cons |
| --- | --- | --- |
| Garbage Collector | error free, faster write time | No control over memory, slower and unpredictable runtime performance, larger program size |
| Manual memory management | control over memory, faster runtime, smaller program size | error prone, slower write time |
| Ownership model | control over memory, error free, faster runtime, smaller program size | slower write time, learning curve |