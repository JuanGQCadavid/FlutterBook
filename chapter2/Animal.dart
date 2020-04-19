class Animal{
  String name;
  String type;

  Animal(String name, String type){
    this.name = name;
    this.type = type;
  }
  Animal.mio(String s){
    print("Eres mi perra, ${s} con tilde en la i");
  }
}