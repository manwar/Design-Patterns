## Design Pattern
***

Playing with Design Pattern using Modern Perl. This is not the first time anyone has done it and definitely not the last.

It is an honest attempt to show the power of Modern Perl. If you look at the individual implementation, you will appreciate it does not take much to get the job done.

To keep it lightweight, I am using Moo for the class definition.

- [1. Factory](https://github.com/manwar/Design-Patterns/tree/master/01-factory)
- [2. Abstract Factory](https://github.com/manwar/Design-Patterns/tree/master/02-abstract-factory)
- [3. Decorator](https://github.com/manwar/Design-Patterns/tree/master/03-decorator)
- [4. Facade](https://github.com/manwar/Design-Patterns/tree/master/04-facade)
- [5. Singleton](https://github.com/manwar/Design-Patterns/tree/master/05-singleton)
- [6. Composite](https://github.com/manwar/Design-Patterns/tree/master/06-composite)
- [7. Builder](https://github.com/manwar/Design-Patterns/tree/master/07-builder)
- [8. State](https://github.com/manwar/Design-Patterns/tree/master/08-state)
- [9. Observer](https://github.com/manwar/Design-Patterns/tree/master/09-observer)
- [10. Proxy](https://github.com/manwar/Design-Patterns/tree/master/10-proxy)
- [11. Template](https://github.com/manwar/Design-Patterns/tree/master/11-template)
- [12. Filter](https://github.com/manwar/Design-Patterns/tree/master/12-filter)
- [13. Bridge](https://github.com/manwar/Design-Patterns/tree/master/13-bridge)
- [14. Iterator](https://github.com/manwar/Design-Patterns/tree/master/14-iterator)
- [15. Prototype](https://github.com/manwar/Design-Patterns/tree/master/15-prototype)
- [16. Data Access Object (DAO)](https://github.com/manwar/Design-Patterns/tree/master/16-data-access-object)
- [17. Adapter](https://github.com/manwar/Design-Patterns/tree/master/17-adapter)

With the release of Perl v5.38 which brings in new experimental feature 'class' to the core, I am trying to re-create the above implementation (with Moo family) using the new experimental feature 'class'. It wouldn't be possible to get everything done yet as we don't have the keyword 'role' in the core as in v5.38.

- [1. Singleton](https://github.com/manwar/Design-Patterns/tree/master/00-class-feature/01-singleton)

## Commonly used Keywords:
***

### Interface:
***

An interface generally defines the set of  methods that an instance of a class that has that interface could respond to.

It defines  a set of methods, the class that implements it "repeats" the same methods, but provides definition, so  interface looks like skeleton of the class.

### Abstract Class:
***

An abstract class is a class that  contains at least one abstract method. An abstract method is  a method  that is declared, but not implemented in the code.

### Concrete Class:
***

A concrete class is a class  that  has an implementation  for all of its methods. They cannot have any unimplemented methods. It  can also extend an abstract class or implement an interface as long as it implements all their methods.

## AUTHOR
***

Mohammad S Anwar, <mohammad.anwar at yahoo.com>

## CONTRIBUTORS
***

- 1. E. Choroba
- 2. Julien Fiegehenn
