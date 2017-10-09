---
num: "Lecture 03"
ready: true
date: 2017-10-09
desc: "Basics of C++ classes, memory, param passing, pointers"
---

Richert gave a first lecture on:

* stack vs. heap

"Basics of C++ classes, memory, param passing, pointers"


# Heap overflow

```cpp
int main() {
    while (true) {
       int * p = new int(10);
    }
}
```