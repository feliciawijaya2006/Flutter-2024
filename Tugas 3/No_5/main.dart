import 'class.dart';
void main() {
  // Create Dog object
  Dog dog = Dog();
  dog.sound();  // Dog specific sound
  dog.eat();    // Dog specific eating behavior

  // Create Cat object
  Cat cat = Cat();
  cat.sound();  // Cat specific sound
  cat.eat();    // Cat specific eating behavior
}
