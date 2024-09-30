class TemperatureConverter {
  double celsius;

  // Constructor to initialize the Celsius temperature
  TemperatureConverter(this.celsius);

  // Method to convert Celsius to Réaumur
  double toReaumur() {
    return celsius * 0.8;
  }

  // Method to convert Celsius to Fahrenheit
  double toFahrenheit() {
    return (celsius * 9 / 5) + 32;
  }

  // Method to convert Celsius to Kelvin
  double toKelvin() {
    return celsius + 273.15;
  }
}
