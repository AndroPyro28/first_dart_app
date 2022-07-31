// ignore_for_file: public_member_api_docs, sort_constructors_first, must_call_super

import 'dart:convert';
import 'dart:html';

import 'package:meta/meta.dart';

void main(List<String> arguments) {
  final admin =
      Admin(firstname: 'john', lastname: 'doe', specialAdminField: 1.5);

  final user = admin as User;
}

abstract class User extends Object {
  // abstract class can have a property or method without a body but you need to implement it to its child class when you make it as a parent class
  final String _firstname;
  final String _lastname;

  User(this._firstname, this._lastname);

  factory User.admin() {
    return Admin(specialAdminField: 123, firstname: 'john', lastname: 'doe');
  }

  // Admin returnNewAdmin() {
  //   return Admin(specialAdminField: 123, firstname: 'john', lastname: 'doe');
  // }

  String get fullname => '${_firstname} ${_lastname}';

  @mustCallSuper
  void signOut() {
    print('Signing Out');
  }

  void myMethod();
  int get myProperty;
}

class Admin extends User {
  final double specialAdminField;
  Admin(
      {required String firstname,
      required String lastname,
      required this.specialAdminField})
      : super(firstname, lastname);

  @override
  String get fullname => 'admin: ${super.fullname}';

  @override
  void signOut() {
    print('admin sign out steps');
    super.signOut();
  }

  void myMethod() {
    print('mymethod with implementation');
  }

  int get myProperty => 15;
}
