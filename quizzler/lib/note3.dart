void main() {
  Human jenny = Human(height: 15, weight: 3.5);
  print(jenny.height);

  Human james = Human(height: 20, weight: 4.2);
  print(james.height);
}

class Human {
  double height;
  double weight;

//   Human({required double height, required double weight}){
//     this.height = height;
//     this.weight = weight;
//   }
  Human({this.height, this.weight});
}
