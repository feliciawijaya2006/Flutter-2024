class Vehicle {
  String name;
  double speed;

  Vehicle(
    this.name, 
    this.speed);

  void move() {
    print('$name is moving at $speed km/h.');
  }
}

class Car extends Vehicle {
  Car(String name, double speed) : super(name, speed);

  @override
  void move() {
    print("The car $name is moving at $speed km/h");
  }
}

class Bike extends Vehicle {
  Bike(String name, double speed) : super(name, speed);

  @override
  void move() {
    print("The bike $name is moving at $speed km/h");
  }
}
