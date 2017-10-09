---
num: "Lecture 03"
ready: true
date: 2017-10-09
desc: "Basics of C++ classes, memory, param passing, pointers"
---

Richert gave a first lecture on:

* stack vs. heap

"Basics of C++ classes, memory, param passing, pointers"

```cpp
// EXAMPLE OF HAVING A CLASS / PROGRAM ALL IN ONE SINGLE FILE
// CUMBERSOME TO WORK WITH. WILL USE .cpp / .h ORGANIZATION FOR BETTER
// MAINTENANCE

#include <iostream>
#include <string>

using namespace std;

class Student {
	
	public:
		Student();
		Student(string studentName, int studentId,
			double studentTuition);
		string getName();
		int getId();
		double getTuition();
		void setName(string name);
		void setId(int studentId);
		void setTuition(double studentTuition);
		void printStudent();

	private:
		string name;
		int id;
		double tuition;
};


Student::Student() {
	name = "John Doe";
	id = 0;
	tuition = 0.0;
}

// Example of a constructor with parameters
Student::Student(string studentName, int studentId,
	double studentTuition) {
	name = studentName;
	id = studentId;
	tuition = studentTuition;
}

string Student::getName() { return name; }

int Student::getId() { return id; }

double Student::getTuition() { return tuition; }

void Student::setName(string studentName) { name = studentName; }

void Student::setId(int studentId) { id = studentId; }

void Student::setTuition(double studentTuition) {
	tuition = studentTuition;
}

void Student::printStudent() {
	cout << "Name: " << name << ", ID: " << id <<
		", tuition: " << tuition << endl;
}

// MAIN //
int main() {

	Student s1; // Default constructor is invoked
	Student me = Student();
	//s1.Student(); // Error.Cannot call constructor on constr object
	me.printStudent();
	s1.printStudent();

	Student Richert = Student("Richert", 1234, 1000.25);
	Richert.printStudent();


	return 0;
}
```
# Organization with Header Files

```cpp
//Student.h:
#ifndef STUDENT_H
#define STUDENT_H

#include <string>
// using namespace std , BAD FOR HEADER FILES!
class Student {
	
	public:
		Student();
		Student(std::string studentName, int studentId,
			double studentTuition);
		std::string getName();
		int getId();
		double getTuition();
		void setName(std::string name);
		void setId(int studentId);
		void setTuition(double studentTuition);
		void printStudent();

	private:
		std::string name;
		int id;
		double tuition;
};

#endif
-----------------------------------
// Student.cpp
#include <iostream>
#include <string>
#include "Student.h"

using namespace std;

Student::Student() {
	name = "John Doe";
	id = 0;
	tuition = 0.0;
}

// Example of a constructor with parameters
Student::Student(string studentName, int studentId,
	double studentTuition) {
	name = studentName;
	id = studentId;
	tuition = studentTuition;
}

string Student::getName() { return name; }

int Student::getId() { return id; }

double Student::getTuition() { return tuition; }

void Student::setName(string studentName) { name = studentName; }

void Student::setId(int studentId) { id = studentId; }

void Student::setTuition(double studentTuition) {
	tuition = studentTuition;
}

void Student::printStudent() {
	cout << "Name: " << name << ", ID: " << id <<
		", tuition: " << tuition << endl;
}
-----------------------------------
// main.cpp
#include "Student.h"

int main() {
	Student s1;
	Student me = Student();
	//s1.Student(); // Error. Cannot call constr on a constr object
	me.printStudent();
	s1.printStudent();

	Student Richert = Student("Richert", 1234, 1000.25);
	Richert.printStudent();

	return 0;
}
```
```make
main: main.o Student.o
 	g++ main.o Student.o -o main

main.o: main.cpp
 	g++ -c main.cpp

Student.o: Student.cpp
 	g++ -c Student.cpp

clean:
 	rm *.o
```
# Pointers
```cpp
int main() {
	int* p; // p is a pointer to an type in memory
	int i = 1;
	// p = i; // ERROR!
	p = &i; // OK. Pointer values are memory addresses
	int* q = p; // Make q point to the same place p does

	// Dereferencing
	// Can obtain the value in memory a pointer is referencing
	cout << "p points to the integer " << *p << endl;

	// Can change a value in memory a pointer is referencing
	*p = 10;
	cout << "p points to the integer " << *p << endl;

	// Note: These pointers are referencing values on the stack
	// Java objects only reference things on the heap
	// Keyword "new" (like Java), creates content on the heap

	p = new int;	// allocate an int on the heap, point p to it
	*p = 2; 		// sets the int value to 2
	int& s = *p;	// q refers to the value p points to
	cout << "s = " << s << ", p = " 
        << p << endl; // s is not a pointer (int)
	s = 4;
	cout << "s = " << s << ", p = " << p << endl;
	cout << "*p = " << *p << endl;

	int* r = &s; 	// r points to the address that q refers to
	*r = 6;			// change int value that r points to to 6
	cout << "s = " << s << endl;	//6
	cout << "*p = " << *p << endl;	//6
	cout << "*r = " << *r << endl;	//6
	return 0;
}
```

# Heap overflow

```cpp
int main() {
    while (true) {
       int * p = new int(10);
    }
}
```
