void main() {
// #1
//   Car myNormalCar = Car();
//   print(myNormalCar.numberOfSeats);
//   myNormalCar.drive();

  // #2-2
  ElectricCar myTesla = ElectricCar();
  myTesla.drive();
  myTesla.recharge();
}

// #1
class Car {
  int numberOfSeats = 5;
  void drive() {
    print('wheels turn');
  }
}

// #2-1 ElectricCar has everything that Car has. (Inheritance)
class ElectricCar extends Car {
  int batteryLevel = 100;
  void recharge() {
    batteryLevel = 100;
  }
}
