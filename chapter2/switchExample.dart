
void main(){
  String animal;

  switch(animal ??= 'lion'){
    case 'tiger':
      print("It's a tiger");
      continue alsoCat;

    case 'lion':
      print("It's a lion");
      continue alsoCat;
    alsoCat:
    case 'cat':
      print("It's a cat");
      break;
  }

}