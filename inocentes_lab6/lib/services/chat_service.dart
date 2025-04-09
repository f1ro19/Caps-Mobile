import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/chat_message.dart';

class ChatService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Get chat messages for a user
  Stream<List<ChatMessage>> getChatMessages(String userId) {
    return _firestore
        .collection('chats')
        .doc(userId)
        .collection('messages')
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs
          .map((doc) => ChatMessage.fromMap(doc.data()))
          .toList();
    });
  }

  // Send a message and get AI response
  Future<void> sendMessage(ChatMessage message) async {
    try {
      // Save user message
      await _firestore
          .collection('chats')
          .doc(message.userId)
          .collection('messages')
          .doc(message.id)
          .set(message.toMap());

      // TODO: Implement AI response generation
      // For now, we'll just send a mock response
      final botMessage = ChatMessage(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        message: "I'm your LawBot assistant. How can I help you today?",
        type: MessageType.bot,
        timestamp: DateTime.now(),
        userId: message.userId,
      );

      // Save bot response
      await _firestore
          .collection('chats')
          .doc(message.userId)
          .collection('messages')
          .doc(botMessage.id)
          .set(botMessage.toMap());
    } catch (e) {
      throw Exception('Failed to send message: $e');
    }
  }

  // Clear chat history
  Future<void> clearChatHistory(String userId) async {
    try {
      final messages = await _firestore
          .collection('chats')
          .doc(userId)
          .collection('messages')
          .get();

      for (var message in messages.docs) {
        await message.reference.delete();
      }
    } catch (e) {
      throw Exception('Failed to clear chat history: $e');
    }
  }
}
