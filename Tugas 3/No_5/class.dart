// Animal class
class Animal {
  // Method for animal sound
  void sound() {
    print('Animal makes a sound.');
  }

  // Method for eating
  void eat() {
    print('Animal is eating.');
  }
}

// Dog class inherits Animal class
class Dog extends Animal {
  // Override sound method for Dog
  @override
  void sound() {
    print('Dog barks: Woof Woof!');
  }

  // Override eat method for Dog
  @override
  void eat() {
    print('Dog is eating dog food.');
  }
}

// Cat class inherits Animal class
class Cat extends Animal {
  // Override sound method for Cat
  @override
  void sound() {
    print('Cat meows: Meow Meow!');
  }

  // Override eat method for Cat
  @override
  void eat() {
    print('Cat is eating cat food.');
  }
}
