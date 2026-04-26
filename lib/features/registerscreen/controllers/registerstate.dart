abstract class Registerstate {}

class registerinitial extends Registerstate{}

class registerloading extends Registerstate{}

class registersuccess extends Registerstate{}

class registererror extends Registerstate{
final String message ;
 registererror(this.message);

}
