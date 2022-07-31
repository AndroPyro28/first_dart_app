// ignore_for_file: public_member_api_docs, sort_constructors_first, must_call_super

void main(List<String> arguments) {}

//interface
abstract class DataReader<T> {
  late T myField;

  T getSomeData();
}

//class 1

class StringDataReader implements DataReader<String> {
  @override
  String myField;

  @override
  String getSomeData() {
    return 'some string here';
  }

  StringDataReader({required this.myField});
}

//class 2
class IntDataReader implements DataReader<int> {
  @override
  int myField;

  @override
  int getSomeData() {
    return 5555;
  }

  IntDataReader({required this.myField});
}
