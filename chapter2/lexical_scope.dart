



void main(){


}

String topLevel ="Hello";
void firstFunction(){
  String secondLevel = 'Hi';
  print(topLevel);

  nestedFunction(){
    String thirdLevel ="Howdy";
    print(topLevel);
    print(secondLevel);
    innerNestedFunction(){
      print(topLevel);
      print(secondLevel);
      print(thirdLevel);
    }
  }
  //print(thirdLevel); -> third level is only for nestedFunction and innerNestedFunction
}

