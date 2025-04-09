import 'package:flutter/material.dart';
import '../../constants/theme.dart';
import '../notifications/notifications_screen.dart';

class Message {
  final String name;
  final String timeAgo;

  Message({required this.name, required this.timeAgo});
}

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  static final List<Message> messages = [
    Message(name: 'Mr. Legal Assistant', timeAgo: '10 min ago'),
    Message(name: 'Mr. John Doe', timeAgo: '10 min ago'),
    Message(name: 'Atty. Macalintal', timeAgo: '10 min ago'),
    Message(name: 'Chief Srgnt. Briguala', timeAgo: '10 min ago'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'MESSAGES',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.notifications_outlined, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NotificationsScreen(),
              ),
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              // TODO: Open menu
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return _buildMessageItem(messages[index]);
        },
      ),
    );
  }

  Widget _buildMessageItem(Message message) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey[200]!),
        ),
      ),
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: Text(
              'LB',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ),
        ),
        title: Text(
          message.name,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: Text(
          message.timeAgo,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[600],
          ),
        ),
        onTap: () {
          // TODO: Navigate to chat screen
        },
      ),
    );
  }
}
