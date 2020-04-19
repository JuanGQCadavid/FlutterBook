void main(){
  int intVar = 5;

  String stringVar = "Juan";

  dynamic dyVar = "hola";
  dyVar = 5;
  dyVar = true;

  var varVar = "hola";
  // varVar = 5; -> Throws a error

  Map <String, dynamic> json;
  // Map <String, var> secondJson; -> var can be only use for declaring variables not for defining type propose.
}