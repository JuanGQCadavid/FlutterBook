import 'Animal.dart';
import 'Cat.dart';
import 'Dog.dart';

void main(){
  Cat myCat = Cat();
  myCat.color = "Orange";
  myCat.name = "Julieta";

  Animal myAnimal = Animal("Andres", "Human");

  Dog myDog = Dog("theDog","Dog","Maicol");
  myDog.makeNoise();


}