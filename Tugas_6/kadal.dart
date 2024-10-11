import 'dart:io';
import 'dart:async';
import 'dart:math';

class SnakeGame {
  static const int width = 20;
  static const int height = 10;
  List<Point> snake = [Point(10, 5)];
  Point food = Point(5, 5);
  String direction = 'right';
  bool gameOver = false;

  SnakeGame() {
    spawnFood();
  }

  void spawnFood() {
    Random random = Random();
    // Pastikan makanan tidak muncul di tubuh ular
    do {
      food = Point(random.nextInt(width), random.nextInt(height));
    } while (snake.contains(food));
  }

  void drawBoard() {
    for (int y = 0; y < height; y++) {
      for (int x = 0; x < width; x++) {
        if (snake.first == Point(x, y)) {
          stdout.write('A');  // Kepala ular diganti menjadi 'A'
        } else if (snake.contains(Point(x, y))) {
          stdout.write('o');  // Badan ular
        } else if (food == Point(x, y)) {
          stdout.write('X');  // Makanan
        } else {
          stdout.write('.');  // Ruang kosong
        }
      }
      print('');
    }
  }

  void updateSnake() {
    Point newHead;

    // Menggerakkan ular ke arah makanan
    if (snake.first.x < food.x) {
      direction = 'right';
    } else if (snake.first.x > food.x) {
      direction = 'left';
    } else if (snake.first.y < food.y) {
      direction = 'down';
    } else if (snake.first.y > food.y) {
      direction = 'up';
    }

    // Menentukan posisi kepala ular baru berdasarkan arah
    switch (direction) {
      case 'up':
        newHead = Point(snake.first.x, snake.first.y - 1);
        break;
      case 'down':
        newHead = Point(snake.first.x, snake.first.y + 1);
        break;
      case 'left':
        newHead = Point(snake.first.x - 1, snake.first.y);
        break;
      case 'right':
        newHead = Point(snake.first.x + 1, snake.first.y);
        break;
      default:
        return;
    }

    // Memasukkan posisi kepala baru ke dalam ular
    snake.insert(0, newHead);

    // Cek apakah ular memakan makanan
    if (newHead == food) {
      spawnFood();  // Generate makanan baru
    } else {
      snake.removeLast();  // Hapus ekor jika tidak makan
    }

    // Setelah ular bergerak, cek apakah menabrak dinding atau tubuhnya sendiri
    if (newHead.x < 0 || newHead.y < 0 || 
        newHead.x >= width || newHead.y >= height || 
        snake.skip(1).contains(newHead)) {
      gameOver = true;  // Set gameOver menjadi true jika ada tabrakan
    }
  }

  Future<void> start() async {
    while (!gameOver) {
      stdout.write('\x1B[2J\x1B[0;0H');  // Membersihkan terminal
      drawBoard();  // Menggambar papan permainan
      updateSnake();  // Update posisi ular
      await Future.delayed(Duration(milliseconds: 300));  // Pergerakan ular setiap 300ms
    }
    // Jika gameOver terjadi, lakukan looping untuk menampilkan pesan
    while (gameOver) {
      stdout.write('\x1B[2J\x1B[0;0H');  // Membersihkan terminal
      print('Game Over!');  // Menampilkan Game Over ketika permainan selesai
      await Future.delayed(Duration(seconds: 1));  // Delay sebelum mengulangi pesan
    }
  }
}

void main() {
  SnakeGame game = SnakeGame();
  game.start();
}