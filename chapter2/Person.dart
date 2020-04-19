class Person{
  String name;
  String type;

  // Default constructor
  Person(this.name,this.type);

  // Defines a greek person but creates a Person's instance.
  Person.roman(this.name){
    this.type = "roman";
  }
  // Person named constructor. It returns a Greek instance instead of Person.
  factory Person.greek(String name){
    return Greek(name);
  }
  // Class method.
  void sayName() => print(this.name);
}
// Subclass extends person.
class Greek extends Person {
  Greek(String name) : super(name, "Greece");
}