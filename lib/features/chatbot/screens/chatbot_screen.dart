// chatbot_screen.dart
import 'package:app1/features/chatbot/widgets/chat_bubble.dart';
import 'package:app1/features/chatbot/widgets/chat_input.dart';
import 'package:flutter/material.dart';


class ChatbotScreen extends StatefulWidget {
  const ChatbotScreen({super.key});

  @override
  State<ChatbotScreen> createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatbotScreen> {
  final List<Map<String, dynamic>> _messages = [];
  final _controller = ScrollController();
  bool _isLoading = false;

  void _sendMessage(String text) {
    if (text.isEmpty) return;
    
    setState(() {
      _messages.add({'text': text, 'isUser': true});
      _isLoading = true;
    });
    
    _controller.animateTo(
      _controller.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
    
    // Simulate AI response after delay
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _messages.add({
          'text': _getMockResponse(text),
          'isUser': false,
        });
        _isLoading = false;
      });
      _controller.animateTo(
        _controller.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
  }

  String _getMockResponse(String input) {
    final responses = [
      "Au Maroc, cette situation est régie par l'article 124 du Code de la famille...",
      "Pour ce type de problème, vous devez contacter le tribunal de première instance...",
      "Les documents nécessaires pour cette démarche sont: CNI, justificatif de domicile...",
      "Le délai légal pour ce type de procédure est de 30 jours selon la loi 12-07...",
    ];
    return responses[DateTime.now().millisecond % responses.length];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assistant Juridique'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _controller,
              padding: const EdgeInsets.all(16),
              itemCount: _messages.length + (_isLoading ? 1 : 0),
              itemBuilder: (context, index) {
                if (index < _messages.length) {
                  final message = _messages[index];
                  return ChatBubble(
                    text: message['text'],
                    isUser: message['isUser'],
                  );
                } else {
                  return const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
              },
            ),
          ),
          ChatInput(onSend: _sendMessage),
        ],
      ),
    );
  }
}