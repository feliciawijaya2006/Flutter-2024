// Book class
class Book {
  String title;
  String author;
  int year;

  // Constructor to initialize the Book object
  Book(this.title, this.author, this.year);

  // Method to display book details
  void displayBookInfo() {
    print('Title: $title, Author: $author, Year: $year');
  }
}

// Library class that contains a list of books
class Library {
  List<Book> books = [];

  // Method to add a book to the library
  void addBook(Book book) {
    books.add(book);
    print('Book "${book.title}" added to the library.');
  }

  // Method to remove a book from the library
  void removeBook(String title) {
    books.removeWhere((book) => book.title == title);
    print('Book "$title" removed from the library.');
  }

  // Method to display all books in the library
  void displayBooks() {
    if (books.isEmpty) {
      print('No books in the library.');
    } else {
      print('Books in the library:');
      for (var book in books) {
        book.displayBookInfo();
      }
    }
  }
}

void main() {
  // Create a library object
  Library library = Library();

  // Create book objects
  Book book1 = Book('1984', 'George Orwell', 1949);
  Book book2 = Book('To Kill a Mockingbird', 'Harper Lee', 1960);
  Book book3 = Book('The Great Gatsby', 'F. Scott Fitzgerald', 1925);

  // Add books to the library
  library.addBook(book1);
  library.addBook(book2);
  library.addBook(book3);

  // Display all books in the library
  library.displayBooks();

  // Remove a book from the library
  library.removeBook('1984');

  // Display all books after removal
  library.displayBooks();
}
