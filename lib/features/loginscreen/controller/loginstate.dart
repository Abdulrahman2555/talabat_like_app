abstract class Loginstate {}

class logininitial extends Loginstate {}

class loginloading extends Loginstate {}

class loginsuccess extends Loginstate {}

class loginerror extends Loginstate {
  final String message;
  loginerror(this.message);
}
