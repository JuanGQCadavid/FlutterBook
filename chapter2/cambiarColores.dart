
import 'Animal.dart';
import 'Logger.dart';
import 'Sofia.dart';

enum Color { red, blue}

void main(){
  Sofia miNovia = Sofia();
  int a = 5;

  Color myColor = Color.red;
  myDignidad(myColor);
  myDignidad(Color.blue);

  Animal myLogger = Animal.mio("Sofía");
}

void myDignidad(Color myColor){
  switch(myColor){
    case Color.blue:
      print("blue");
      break;
    case Color.red:
      print("red");
      // TODO: Handle this case.
      break;
  }
}