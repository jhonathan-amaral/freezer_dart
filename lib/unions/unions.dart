import 'package:freezed_annotation/freezed_annotation.dart';

part 'unions.freezed.dart';

@freezed
class Example with _$Example {
  const factory Example.person(String name, int age) = Peson;
  const factory Example.city(String name, int population) = City;
}

void main() {
  var exemple = Example.person('Jhonathan', 38);
}
