---
num: "Lecture 04"
ready: true
date: 2017-10-11
desc: "Richert: More on Pointers"
---
# The big-3:

* constructor
* destructor
* copy constructor

Blunt rule-of-thumb (not always applicable, but a good start): If any of your data members are pointers, and especially
if those pointers end up pointing to stuff allocated with `new`, think carefully about whether you need to implement code for these three functions.

Conversely, if *none* of your attributes are pointers (e.g. if they are *all* primitive types, or C++ library types 
such as `std::string`), you *probably* don't need to worry about the big-3.

To check your understanding, try [cs32/lab03/](/cs32/lab03/)

# Also this on uninitialized pointers:

https://ucsb-cs16.github.io/topics/cpp_pointer_initialization/

# Also see:

https://gauchospace.ucsb.edu/courses/pluginfile.php/1411679/mod_resource/content/1/CMPSC%2032%20Conrad%20PROOF.pdf

p. 55-81

# The "->" operator
```cpp
	string* s = new string("Hello");
	cout << s << endl; // prints address of pointer s
	cout << *s << endl; // prints value of pointer s
	//cout << s.length() << endl; // ERROR
	cout << (*s).length() << endl;
	cout << s->length() << endl; // -> is shorthand for (*s).
```
# Destructor
```cpp
// Student.h
public:
~Student();
```
```cpp
// Student.cpp
Student::~Student() {
	cout << "calling destructor for this: " << this << endl;
}
Note: “this” is a keyword referring to the reference of the current object. Similar keyword in Java.
```
```cpp
void foo() {
	Student s;
	cout << "&s = " << &s << endl;

	Student* me = new Student();
	cout << "me: " << me << endl;
	cout << me->getName() << endl;

	delete me; 
}

int main() {
  foo();
	return 0;
}
// What gets deleted? Order of deletion?
// destructors are called with the keyword "delete" or if the function it lives in is popped from the stack.
```

