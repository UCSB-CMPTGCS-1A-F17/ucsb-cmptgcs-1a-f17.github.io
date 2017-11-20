---
num: "Lecture 05"
ready: true
date: 2017-11-15
desc: "Phill: Make, Makefiles, compiling/linking/running in C/C++, and build managers in general (e.g. Ant, Maven, Gradle, etc.)"
---

# A repo for today:

https://github.com/ucsb-cmptgcs-1a-f17/lecture-11-15-Makefiles

# Some Makefile tutorials

* http://www.cs.colby.edu/maxwell/courses/tutorials/maketutor/
* http://mrbook.org/blog/tutorials/make/
* https://www.cs.umd.edu/class/fall2002/cmsc214/Tutorial/makefile.html

# Compiling/linking/running in C/C++

# build managers in general (e.g. Ant, Maven, Gradle, etc.)

For Java:

* Ant: "Another neat tool"
   * From Apache (the folks that brought you the web server)
   * Uses XML instead of weird tab-based syntax
   * Not dependent on Unix, per se (OS independent)
   * Otherwise, similar to Make, generally
   
* Maven
   * Also from Apache
   * Different philosophy: declarative instead of imperative
   * Also has a "Maven Central": package/dependency manager for jar files 
       * similar to Python's `pip` system, Ruby gems, Node `npm`
   * You specify what you want instead of "how"
   * Much more reliant on specific naming/directory conventions (similar to Ruby on Rails, it's an "opinionated" framework)
 
* Gradle
   * Yet another choice, used in Android programming
   * Scripting language is called `groovy`
   
