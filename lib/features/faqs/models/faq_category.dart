

class FAQCategory {
  final String title;
  final List<FAQItem> questions;

  FAQCategory({required this.title, required this.questions});
}

class FAQItem {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});
}
