// Base Interface for the Logger
abstract interface class Logger {
  void log(String message);
}

// Basic Implementation
class BasicLogger implements Logger {
  @override
  void log(String message) {
    print(message);
  }
}

// Base class for decorators
abstract class LoggerDecorator implements Logger {
  final Logger _wrappedLogger;

  const LoggerDecorator(this._wrappedLogger);

  @override
  void log(String message) {
    _wrappedLogger.log(message);
  }
}

// Decorator for adding timestamps
class TimestampDecorator extends LoggerDecorator {
  TimestampDecorator(Logger logger) : super(logger);

  @override
  void log(String message) {
    final timestamp = DateTime.now().toIso8601String();
    super.log('$timestamp: $message');
  }
}

// Decorator for adding log levels
class LevelDecorator extends LoggerDecorator {
  final String level;

  LevelDecorator(Logger logger, this.level) : super(logger);

  @override
  void log(String message) {
    super.log('[$level] $message');
  }
}

// Decorator for writing to a file
class FileWriteDecorator extends LoggerDecorator {
  final String filePath;

  FileWriteDecorator(Logger logger, this.filePath) : super(logger);

  @override
  void log(String message) {
    super.log(message);
    // In a real implementation, we would write to a file here
    print('Also writing "$message" to $filePath');
  }
}

void main() {
  // Create a basic logger
  final basicLogger = BasicLogger();

  // Create a decorated logger with multiple decorators
  final decoratedLogger = FileWriteDecorator(
    LevelDecorator(
      TimestampDecorator(basicLogger),
      'INFO'
    ),
    'log.txt'
  );

  // Use the decorated logger
  decoratedLogger.log('This is a test message');

  // Use it again to show caching won't apply here
  decoratedLogger.log('This is another test message');
}