import 'dart:io';
import 'dart:async';

class Node {
  String value;
  Node? next;

  Node(this.value);
}

class LinkedList {
  Node? head;
  Node? tail;

  void add(String value) {
    Node newNode = Node(value);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail!.next = newNode;
      tail = newNode;
    }
  }

  void removeFirst() {
    if (head != null) {
      head = head!.next;
    }
  }

  int length() {
    int count = 0;
    Node? current = head;
    while (current != null) {
      count++;
      current = current.next;
    }
    return count;
  }
}

void printSnake(LinkedList list, int width, int height, int color) {
  // Create grid with empty spaces
  List<List<String>> grid = List.generate(height, (_) => List.filled(width, ' '));

  Node? current = list.head;
  int x = 0, y = 0;
  bool goingRight = true;

  // Loop through the linked list and place the characters in the grid
  while (current != null) {
    grid[y][x] = '\x1B[3${color}m${current.value}\x1B[0m';  // Place character with color

    current = current.next;

    if (goingRight) {
      x++;
      if (x >= width) {
        x = width - 1;
        y++;
        goingRight = false;
      }
    } else {
      x--;
      if (x < 0) {
        x = 0;
        y++;
        goingRight = true;
      }
    }

    if (y >= height) break;
  }

  // Print the grid
  for (var row in grid) {
    print(row.join(' '));
  }
}

void animateSnake(String name, int width, int height) async {
  LinkedList list = LinkedList();
  int nameIndex = 0;
  int colorIndex = 1;

  // Infinite loop to continue animation
  while (true) {
    // Add characters to the linked list one by one
    if (list.length() < width * height) {
      list.add(name[nameIndex % name.length]);
      nameIndex++;
    } else {
      list.removeFirst(); // Remove the first element to create "scrolling" effect
    }

    // Clear the screen and print the current state of the snake
    print("\x1B[2J\x1B[H");
    printSnake(list, width, height, colorIndex);

    // Change color after the grid is filled
    if (list.length() == width * height) {
      colorIndex = colorIndex % 3 + 1;  // Cycle between 3 colors (1, 2, 3)
    }

    // Delay before the next frame to create animation
    await Future.delayed(Duration(milliseconds: 200));
  }
}

void main() {
  stdout.write('Masukkan nama Anda: ');
  String name = stdin.readLineSync()!;

  // Set terminal dimensions (adjustable)
  int width = 20;
  int height = 10;

  animateSnake(name, width, height);
}
