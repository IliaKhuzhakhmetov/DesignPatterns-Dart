# Adapter Pattern

The Adapter pattern is a structural design pattern that allows objects with incompatible interfaces to work together. This pattern involves a single class, the adapter, which is responsible for communication between the two different interfaces.

## adapter.dart
```
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
    return LibraryBook(bookStoreBook.title, bookStoreBook.author, bookStoreBook.ISBN, shelfNumber);
  }
}

void main() {
  BookStoreBook bookStoreBook = BookStoreBook('Dart Programming', 'John Doe', '123-456-789');
  print(bookStoreBook.getDetails());
  
  BookStoreToLibraryAdapter adapter = BookStoreToLibraryAdapter();
  LibraryBook libraryBook = adapter.adapt(bookStoreBook, 10);
  print(libraryBook.getBookDetails());
}
```

## Key Concepts
- **Target**: This is the interface that the **Client** uses.
- **Client**: This is the class that interacts with a service it can't use directly through the Target.
- **Adaptee**: This is the interface that needs adapting for the **Client** to use.
- **Adapter**: This is the class that makes the **Adaptee**'s interface compatible with the Target's interface.

## Pros and Cons

### Pros

- Single Responsibility Principle: You can separate the interface or data conversion code from the primary business logic of the program.
- Open/Closed Principle: You can introduce new types of adapters into the program without breaking the existing client code.

### Cons
- The overall complexity of the code increases because you need to introduce a set of new interfaces and classes.

# Read more
- [Refactoring Guru: Adapter](https://refactoring.guru/design-patterns/adapter)
- [Wikipedia: Adapter pattern](https://en.wikipedia.org/wiki/Adapter_pattern)