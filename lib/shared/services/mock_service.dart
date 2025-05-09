// shared/services/mock_service.dart
class MockService {
  static Future<List<Map<String, dynamic>>> getFAQs() async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      {
        'category': 'Family Law',
        'questions': [
          {
            'question': 'What are the marriage requirements in Morocco?',
            'answer': 'The requirements include...',
          },
        ],
      },
    ];
  }
}
