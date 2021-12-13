void main() {
// #1
  Car myNormalCar = Car();
  print(myNormalCar.numberOfSeats);
  myNormalCar.drive();

// #2-2 Inheritance
  ElectricCar myTesla = ElectricCar();
  myTesla.drive();
  myTesla.recharge();

// #3-2 Polymorphism 1
  LevitatingCar myMagLev = LevitatingCar();
  myMagLev.drive();

// #4-2 Polymorphism 2
  SelfDrivingCar myWaymo = SelfDrivingCar('1 Hacker Way');
  myWaymo.drive();
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

// #3-1 Polymorphism - override a parent behavior for own custom version.
class LevitatingCar extends Car {
  @override
  void drive() {
    print('glide forward');
  }
}

// #4-1 Polymorphism - override a parent behavior for own custom version.
class SelfDrivingCar extends Car {
  late String destination;
  SelfDrivingCar(String userSetDestination) {
    destination = userSetDestination;
  }
  @override
  void drive() {
    super.drive(); // Getting method from parents.

    print('sterring towards $destination');
    // overrides with a new custom version of print.
  }
}
