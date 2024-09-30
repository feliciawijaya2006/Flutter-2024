import 'dart:io';
import 'class.dart';

void main() {
  // Asking the user whether they want to create a Car or a Bike
  print('Do you want to create a Car or a Bike? (Enter "car" or "bike")');
  String? vehicleType = stdin.readLineSync()?.toLowerCase();

  // Asking the user for the name and speed of the vehicle
  print('Enter the name of the vehicle:');
  String? name = stdin.readLineSync();

  print('Enter the speed of the vehicle (in km/h):');
  double? speed = double.tryParse(stdin.readLineSync()!);

  if (name == null || speed == null) {
    print('Invalid input. Please enter valid name and speed.');
    return;
  }

  // Creating a vehicle instance based on the user input
  if (vehicleType == 'car') {
    Car car = Car(name, speed);
    car.move();  // Call the move method for Car
  } else if (vehicleType == 'bike') {
    Bike bike = Bike(name, speed);
    bike.move();  // Call the move method for Bike
  } else {
    print('Invalid option. Please enter either "car" or "bike".');
  }
}
