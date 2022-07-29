// ignore_for_file: public_member_api_docs, sort_constructors_first


void main(List<String> arguments) {
 final user1 = User(firstname: "andro", lastname: "eugenio");

print(user1.fullName);
}

class User {
  final String firstname;
  final String lastname;
  
  User({
    required this.firstname,
    required this.lastname,
  });

  String getFullName() => "${firstname} ${lastname}";
  
  String get fullName => "${firstname} ${lastname}";
}
