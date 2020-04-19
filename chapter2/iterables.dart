
void main(){
  List<int> nums = [1,2,3,4];

  // Anonymous function
  print("Anonymous");
  nums.forEach((int i) => {print(i + 1)});

  print("lambda");
  nums.forEach(addOneAndPrint);

  print("Map");

  List<int> smallNums = [1,2,3,4];
  Iterable<int> biggerNums = smallNums
      .map((int n) => n * 2);
  print(biggerNums);

}

void addOneAndPrint(int num){
  print(num + 1);
}