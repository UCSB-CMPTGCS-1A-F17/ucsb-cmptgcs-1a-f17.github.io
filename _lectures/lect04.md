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
