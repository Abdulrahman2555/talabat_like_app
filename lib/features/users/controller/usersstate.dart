abstract class Usersstate {}

class userinitial extends Usersstate {}

class userloading extends Usersstate {}

class usersuccess extends Usersstate {
  final List<String> users;
  usersuccess(this.users);
}

class usererror extends Usersstate {
  final String message;
  usererror(this.message);
}
