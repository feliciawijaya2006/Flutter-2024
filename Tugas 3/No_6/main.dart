import 'dart:io';
import 'class.dart';
void main() {
  // Asking the user for the Celsius temperature
  print('Enter temperature in Celsius:');
  double? celsius = double.tryParse(stdin.readLineSync()!);

  if (celsius == null) {
    print('Invalid input. Please enter a valid number.');
    return;
  }

  // Creating the TemperatureConverter object
  TemperatureConverter converter = TemperatureConverter(celsius);

  // Asking the user for conversion option
  print('Choose conversion option:');
  print('1: Convert to Réaumur');
  print('2: Convert to Fahrenheit');
  print('3: Convert to Kelvin');
  String? option = stdin.readLineSync();

  // Performing the conversion based on the user's choice
  switch (option) {
    case '1':
      print('${celsius.toStringAsFixed(2)}°C = ${converter.toReaumur().toStringAsFixed(2)}°Ré');
      break;
    case '2':
      print('${celsius.toStringAsFixed(2)}°C = ${converter.toFahrenheit().toStringAsFixed(2)}°F');
      break;
    case '3':
      print('${celsius.toStringAsFixed(2)}°C = ${converter.toKelvin().toStringAsFixed(2)}K');
      break;
    default:
      print('Invalid option. Please select 1, 2, or 3.');
  }
}
