import 'package:first_dart_app/first_dart_app.dart' as first_dart_app;

void main(List<String> arguments) {
  User newUser1 = User(name: "andro eugenio", photoUrl: "some.png");
  print(newUser1.hasLongName());
}

class User {
  final String name;
  final String photoUrl;

  const User ({
    required this.name,
    required this.photoUrl
  });

  bool hasLongName () {

    return name.length > 10;
  }
  
  static void myMethod() {

  }

  static const minNameLength = 3;
}