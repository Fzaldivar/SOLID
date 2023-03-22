# SOLID

SOLID represents 5 principles of object-oriented programming:

1 - Single Responsibility Principle.\
2 - Open/Closed Principle.\
3 - Liskov Substitution Principle.\
4 - Interface Segregation.\
5 - Dependency Inversion.

## Single Responsibility Principle
It states that every module should have only one responsibility and reason to change. SRP starts with small concrete and specific cases such as a class and/or an object having only one purpose and being used only for one thing. This principle helps you to keep your classes as clean as possible.

## Open/Closed principle
In simple term, Open for extension but closed for modification.

* Open for extension: You should be able to extend or change the behaviors of a class without efforts.
* Closed for modification: You must extend a class without changing the implementation.

## Liskov Substitution Principle
Functions that use pointers or references to base classes must be able to use objects of derived classes without knowing it.

This principle can help you to use inheritance without messing it up.

## Interface Segregation Principle (ISP)
It states that clients should not be forced to implement interfaces they don’t use. Instead of one fat interface, many small interfaces are preferred based on groups of methods, each one serving one submodule.

## Dependency Inversion Principle
High-level modules should not depend on low-level modules both should depend on Abstractions. (Abstractions should not depend upon details. Details should depend upon abstractions)


#### Source
https://medium.com/@nishant.kumbhare4/solid-principles-in-swift-73b505d3c63f
