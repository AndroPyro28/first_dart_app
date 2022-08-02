// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:freezed_annotation/freezed_annotation.dart';

part 'otherfile.freezed.dart';

void main() {
  final person1 = Person(name: "andro", age: 1);
  final person1Update =
      person1.copyWith(name: person1.name, age: person1.age + 5);

  List<String> array = ["andro", "jean", "doe"];
  List<int> numbers = [1, 2, 3, 4, 5, 6];
  final total = numbers.where((element) => element != 1).toList();
  print(total);
}

@freezed
class Person with _$Person {
  const Person._();

  const factory Person({
    required String name,
    required int age,
  }) = _Person;
}
