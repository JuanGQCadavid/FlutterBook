import 'Animal.dart';

class Dog extends Animal{
  String alias;

  Dog(String name, String type, this.alias) : super(name, type);

  void makeNoise(){
    print("Guf Guf");
  }

}