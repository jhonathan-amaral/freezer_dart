//usado para classes simples como response , DTO , classes que tenha atributos e metodos de acessos

import 'package:freezed_annotation/freezed_annotation.dart';

part 'person.freezed.dart';

@freezed
class Person with _$Person {
  factory Person({String? name, int? age}) = _Person;
}

void main() {
  var person = Person(name: 'jhonathan', age: 10);
  print(person.toString());
}
