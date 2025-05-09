// chatbot_screen.dart
import 'package:app1/features/chatbot/widgets/chat_bubble.dart';
import 'package:app1/features/chatbot/widgets/chat_input.dart';
import 'package:flutter/material.dart';
import 'package:app1/app/localization.dart';

class ChatbotScreen extends StatefulWidget {
  const ChatbotScreen({super.key});

  @override
  State<ChatbotScreen> createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatbotScreen> {
  final List<Map<String, dynamic>> _messages = [];
  final ScrollController _scrollController = ScrollController();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _addWelcomeMessage();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _addWelcomeMessage() {
    _messages.add({
      'text':
          "Bonjour, je suis votre assistant juridique. Comment puis-je vous aider aujourd'hui?",
      'isUser': false,
    });
  }

  void _sendMessage(String text) {
    if (text.isEmpty) return;
    
    setState(() {
      _messages.add({'text': text, 'isUser': true, 'time': _getCurrentTime()});
      _isLoading = true;
    });
    
    _scrollToBottom();
    
    // Simulate AI response after delay
    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) {
        setState(() {
          _messages.add({
            'text': _getMockResponse(text),
            'isUser': false,
            'time': _getCurrentTime(),
          });
          _isLoading = false;
        });
        _scrollToBottom();
      }
    });
  }

  String _getCurrentTime() {
    final now = DateTime.now();
    return '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}';
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
      }
    });
  }

  String _getMockResponse(String input) {
    final responses = [
      "Au Maroc, cette situation est régie par l'article 124 du Code de la famille. Vous avez le droit de demander une indemnité si certaines conditions sont remplies.",
      "Pour ce type de problème, vous devez contacter le tribunal de première instance de votre ville. Apportez votre CIN et tous les documents relatifs à votre cas.",
      "Les documents nécessaires pour cette démarche sont: CNI, justificatif de domicile, acte de naissance récent, et formulaire CERFA n°12345.",
      "Le délai légal pour ce type de procédure est de 30 jours selon la loi 12-07. Passé ce délai, vous devrez suivre une procédure différente.",
    ];
    return responses[DateTime.now().millisecond % responses.length];
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Legal Assistant'),
      ),
      body: Column(
        children: [
          Expanded(
            child:
                _messages.isEmpty
                    ? Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.chat_bubble_outline,
                            size: 64,
                            color: Theme.of(
                              context,
                            ).colorScheme.primary.withOpacity(0.5),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            localizations.startChat,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    )
                    : ListView.builder(
                      controller: _scrollController,
                      padding: const EdgeInsets.all(16),
                      itemCount: _messages.length + (_isLoading ? 1 : 0),
                      itemBuilder: (context, index) {
                        if (index < _messages.length) {
                          final message = _messages[index];
                          return ChatBubble(
                            text: message['text'],
                            isUser: message['isUser'],
                            time: message['time'],
                          );
                        } else {
                          return Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ),
                          );
                        }
                      },
                    ),
          ),
          ChatInput(onSend: _sendMessage, hintText: localizations.typeMessage),
        ],
      ),
    );
  }
}