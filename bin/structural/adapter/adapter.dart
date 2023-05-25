class BookStoreBook {
  String title;
  String author;
  String ISBN;

  BookStoreBook(this.title, this.author, this.ISBN);

  String getDetails() {
    return 'Title: $title, Author: $author, ISBN: $ISBN';
  }
}

class LibraryBook {
  String title;
  String author;
  String ISBN;
  int shelfNumber;

  LibraryBook(this.title, this.author, this.ISBN, this.shelfNumber);

  String getBookDetails() {
    return 'Title: $title, Author: $author, ISBN: $ISBN, Shelf Number: $shelfNumber';
  }
}

class BookStoreToLibraryAdapter {
  LibraryBook adapt(BookStoreBook bookStoreBook, int shelfNumber) {
    return LibraryBook(bookStoreBook.title, bookStoreBook.author,
        bookStoreBook.ISBN, shelfNumber);
  }
}

void main() {
  BookStoreBook bookStoreBook =
      BookStoreBook('Dart Programming', 'John Doe', '123-456-789');
  print(bookStoreBook.getDetails());

  BookStoreToLibraryAdapter adapter = BookStoreToLibraryAdapter();
  LibraryBook libraryBook = adapter.adapt(bookStoreBook, 10);
  print(libraryBook.getBookDetails());
}
