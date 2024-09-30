import 'class.dart';
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
