import 'package:first_dart_app/first_dart_app.dart' as first_dart_app;

void main(List<String> arguments) {
  User newUser = User(name: "andro", photoUrl: "some.png");
}

class User {
  String name;
  String photoUrl;
  User ({
    required this.name,
    required this.photoUrl
  })
  
}