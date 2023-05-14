import 'example_class.dart';

class MockSpaceship implements Spacecraft {
  @override
  DateTime? launchDate;

  @override
  late String name;

  @override
  void describe() {
  }

  @override
  int? get launchYear => throw UnimplementedError();
}

//!

class Person {
  final String _name;

  Person(this._name);
  String greet(String who) => 'Hello, $who. I am $_name.';
}

class Impostor implements Person {
  String get _name => '';

  String greet(String who) => 'Hi $who. Do you know who I am?';
}

String greetBob(Person person) => person.greet('Bob');

void main() {
  print(greetBob(Person('Kathy')));
  print(greetBob(Impostor()));
}

//!
// class Point implements Comparable, Location {...}