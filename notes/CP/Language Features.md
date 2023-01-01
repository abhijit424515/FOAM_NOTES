# Language features

```cpp
#include <bits/stdc++.h> // includes the entire standard library
```

## Input and Output
The following lines at the beginning of the code make input and output more efficient (more like a side effect with some precautions):

```cpp
ios::sync_with_stdio(0);
cin.tie(0);
```
[stackoverflow-ref](https://stackoverflow.com/questions/31162367/significance-of-ios-basesync-with-stdiofalse-cin-tienull)

The C functions `scanf` and `printf` are an alternative to the C++ standard streams. They are usually slightly faster, but also more difficult to use. 

The following code reads two integers from the input:
```cpp
int a, b;
scanf("%d %d", &a, &b);
```

Read a line using:
```cpp
string s;
getline(cin, s);
```

If the amount of data is unknown, the following loop is useful:
```cpp
while (cin >> x) {
// code
}
```

This loop reads elements from the input one after another, until there is no more data available in the input.

In some contest systems, files are used for input and output. An easy solution for this is to write the code as usual using standard streams, but add the following lines to the beginning of the code:
```cpp
freopen("input.txt", "r", stdin);
freopen("output.txt", "w", stdout);
```
After this, the program reads the input from the file “input.txt” and writes the output to the file “output.txt.”

---
## Numbers

### Typecasting
Here's a wrong way of typecasting `int` to `long long int`:
```cpp
int a = 123456789;
long long b = a*a;
cout << b << "\n"; // -1757895751
```

Here's the correct way:
```cpp
int a = 123456789;
long long b = (long long) a*a;
cout << b << "\n"; // 15241578750190521
```

### Modulo
**Note**: For taking modulo, C++ returns negative value for negative inputs.

### Floats
The following code prints the value of x with 9 decimal places:
```cpp
printf("%.9f\n", x);
```

A difficulty when using floating point numbers is that some numbers cannot be represented accurately as floating point numbers, and there will be rounding errors.
For example, in the following code, the value of `x` is slightly smaller than `1`, while the correct value would be `1`.
```cpp
double x = 0.3*3+0.1;
printf("%.20f\n", x); // 0.99999999999999988898
```

To compare doubles, use:
```cpp
if (abs(a-b) < 1e-9) {
  // a and b are equal
}
```

---
## Shortening Code

### Type names
Custom alias for long long (default int):
```cpp
typedef long long ll;
```

The command typedef can also be used with more complex types. For example, the following code gives the name vi for a vector of integers and the name pi for a pair that contains two integers.
```cpp
typedef vector<int> vi;
typedef pair<int,int> pi;
```

### Macros

A macro specifies that certain strings in the code will be changed before the compilation. In C++, macros are defined using the #define keyword.

For example, we can define the following macros:
```cpp
#define F first
#define S second
#define PB push_back
#define MP make_pair
```

After this, the code
```cpp
v.push_back(make_pair(y1,x1));
v.push_back(make_pair(y2,x2));
int d = v[i].first+v[i].second;
```

can be shortened as follows:
```cpp
v.PB(MP(y1,x1));
v.PB(MP(y2,x2));
int d = v[i].F+v[i].S;
```

A macro can also have parameters, which makes it possible to shorten loops and other structures. For example, we can define the following macro:
```cpp
#define REP(i,a,b) for (int i = a; i <= b; i++)
```

After this, the code
```cpp
for (int i = 1; i <= n; i++) {
  search(i);
}
```

can be shortened as follows:
```cpp
REP(i,1,n) {
  search(i);
}
```

---