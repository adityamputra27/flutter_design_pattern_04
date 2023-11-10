import 'package:flutter/material.dart';

@immutable
class Person {
  final String name;
  final String lastName;
  final int age;
  final String nation;
  final String email;

  const Person({
    required this.name,
    required this.lastName,
    required this.age,
    required this.nation,
    required this.email,
  });

  Person copyWith({
    required String? name,
    required String? lastName,
    required int? age,
    required String? nation,
    required String? email,
  }) {
    return Person(
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      age: age ?? this.age,
      nation: nation ?? this.name,
      email: email ?? this.email,
    );
  }

  Person clone() => copyWith(
      name: name, lastName: lastName, age: age, nation: nation, email: email);
}
