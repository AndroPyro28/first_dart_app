part './otherfile.dart';

void main() {
  final x = "hello";
  print(x.duplicate());
  final someClass = NewClass();
  print(someClass._privateField);
}

extension StringDuplication on String {
  String duplicate() {
    return '$this $this';
  }
}
