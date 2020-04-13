void main(){
  List<String> greetings = [
    "World",
    "Mars",
    "Oregon",
    "Barry",
    "David Bowie",

  ];
  String hola = "DART";
  print("This is a Dart (${hola.length}) program");
  for (var name in greetings){
    helloDartWithName(name);
  }

}

void helloDart(){
  print("Hello, dart");
}

void helloDartWithName(String name){
  print("Hello $name");
}