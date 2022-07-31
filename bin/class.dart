void main() {
  final admin = Admin('andro', 'eugenio');
  admin.sendMessage('hotdog');
  final chatBot = ChatBot();
  chatBot.doSomeStuff();
}

class BaseClass {
  // ignore: non_constant_identifier_names
  late dynamic SomePropThatNeedsAllByClass;
}

mixin Client {
  void sendMessage(String msg) {
    print("some message $msg");
  }
}

class User {
  final String firstname;
  final String lastname;

  User(this.firstname, this.lastname);
}

class Admin extends User with BaseClass, Client {
  // you can only use 'with' only to those class that have no constructor
  Admin(super.firstname, super.lastname);
}

class ChatBot with Client {
  void doSomeStuff() {
    print('doing some stuff');
  }
}
