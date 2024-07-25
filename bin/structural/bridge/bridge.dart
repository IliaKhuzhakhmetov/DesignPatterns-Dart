// Message abstraction
abstract class Message {
  final MessageSender sender;

  Message(this.sender);

  void send(String content);
}

// Concrete abstraction for SMS message
class SmsMessage extends Message {
  SmsMessage(MessageSender sender) : super(sender);

  @override
  void send(String content) {
    sender.sendMessage('SMS: $content');
  }
}

// Concrete abstraction for Email message
class EmailMessage extends Message {
  EmailMessage(MessageSender sender) : super(sender);

  @override
  void send(String content) {
    sender.sendMessage('Email: $content');
  }
}

// Interface for message sender
abstract interface class MessageSender {
  void sendMessage(String content);
}

// Concrete sender through HTTP API
class HttpApiSender implements MessageSender {
  @override
  void sendMessage(String content) {
    print('Sending via HTTP API: $content');
  }
}

// Concrete sender through SMTP
class SmtpSender implements MessageSender {
  @override
  void sendMessage(String content) {
    print('Sending via SMTP: $content');
  }
}

void main() {
  MessageSender httpApiSender = HttpApiSender();
  MessageSender smtpSender = SmtpSender();

  Message smsMessage = SmsMessage(httpApiSender);
  smsMessage.send('Hello via HTTP API');

  Message emailMessage = EmailMessage(smtpSender);
  emailMessage.send('Hello via SMTP');
}
