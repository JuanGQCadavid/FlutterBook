
void main(){
  print(hello('Juan'));
  print(hello_two("Pepe"));
  print(addNums(a:5));
  print(addNums_two(3,2));
}

String hello (String name){
  return 'Hello! $name';
}

String hello_two(String name) => 'Hello! $name';

int addNums({int a, int b}){
  a ??= 0;
  b ??= 0;
  return a + b;
}

int addNums_two(int a, int b, [int c = 0]){
  return a + b + c;
}