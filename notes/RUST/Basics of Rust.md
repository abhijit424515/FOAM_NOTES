# Basics of Rust

### 5 Main Features
- Memory Safe
- No null
- No exceptions
- Modern package manager (cargo)
- No data races (for asynchronous coding)

### Other features

| Features | Pros | Cons |
| --- | --- | --- |
| Garbage Collector | error free, faster write time | No control over memory, slower and unpredictable runtime performance, larger program size |
| Manual memory management | control over memory, faster runtime, smaller program size | error prone, slower write time |
| Ownership model | control over memory, error free, faster runtime, smaller program size | slower write time, learning curve |

---

## Cargo 

config file ---> `cargo.toml`
semantic versioning ---> [semver-reference](https://www.semver.org)

- New project
  ```shell
  cargo new alpha_project
  ```
- Run project (default-mode = debug)
  ```shell
  cargo run
  ```
- Run project in release-mode
  ```shell
  cargo run --release
  ```

**Note**: Make sure `target/release` and `target/debug` folders are in `.gitignore`

--- 

## Variables
### Basic Data Types
- Booleans
- Integers
  - i16/u16 -> 2 bytes
  - i32/u32 -> 4 bytes
  - i64/u64 -> 8 bytes
  - i128/u128 -> 16 bytes
  - isize/usize -> pointer_type
- Floats
  - f32 -> 4 bytes
  - f64 -> 8 bytes (default)

Ex. 
```rust
const ZETA:i32 = 4; 
    // type-annotation is compulsory here
    // const can be placed outside functions too
    // best performance, since they are inline to compile time

fn main(){
  // ---> mutable and immutable variables
  let x = 4;        // immutable by default, stored in stack
  let y:i32 = 4;
  let (alpha, beta) = ("a","b");
  
  let mut z = 4;    // mutable, stored in heap
  
  // ---> scope
  {
    let p = 43;             // local variable with local scope
    println!("{},{}",z,p);  // 4,43
    // after this block, p is immediately dropped from memory
  }

  // ---> shadowed variables
  {
    let x = 5;        // shadowed variable
    println!("{}",x); // 5
    // now the local value of the shadowed variable x is dropped 
  }
  let mut epsilon = 1;    // x is immutable
  let epsilon = "hello";  // x is now immutable, and has a different type
                          // redefines x with different mutability
}
```

---

## Memory Safety
Rust guarantees memory safety at compile time.

Ex.
```rust
  let enigma:i32; 
  // won't work
```

```rust
  let enigma:i32; 
  if true {
    enigma = 42;
  }
  // won't work
```

```rust
  let enigma:i32; 
  if true {
    enigma = 42;
  }
  else {
    enigma = 7;
  }
  // WORKS !
```

---

## Functions

Chronological order is not needed for functions in rust.
Function naming is preferred to be in **snake_case_format**.

Ex. 
```rust
fn do_stuff(a:i32, b:i64) -> f64 {
  // return b/a;
  b/a
}
```

Rust functional calls currently do not support named variable calls, so the correct order of variables must be maintained.
Also, currently functions in rust do not support variable number of arguments, or variable data type for a particular parameter.

**Note**: Macros support variable data types for the used parameters, and they always end in `!` mark, `ex. println!`