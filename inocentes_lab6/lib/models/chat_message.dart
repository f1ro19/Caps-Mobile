import 'package:cloud_firestore/cloud_firestore.dart';

enum MessageType {
  user,
  bot,
}

class ChatMessage {
  final String id;
  final String message;
  final MessageType type;
  final DateTime timestamp;
  final String userId;

  ChatMessage({
    required this.id,
    required this.message,
    required this.type,
    required this.timestamp,
    required this.userId,
  });

  factory ChatMessage.fromMap(Map<String, dynamic> map) {
    return ChatMessage(
      id: map['id'] as String,
      message: map['message'] as String,
      type: MessageType.values.firstWhere(
        (e) => e.toString() == map['type'],
      ),
      timestamp: (map['timestamp'] as Timestamp).toDate(),
      userId: map['userId'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'message': message,
      'type': type.toString(),
      'timestamp': Timestamp.fromDate(timestamp),
      'userId': userId,
    };
  }
}
