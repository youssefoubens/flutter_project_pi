import 'package:flutter/material.dart';
import '../models/faq_category.dart';

class FAQScreen extends StatelessWidget {
  FAQScreen({super.key});

  final List<FAQCategory> _categories = [
    FAQCategory(
      title: 'Droit de la Famille',
      questions: [
        FAQItem(
          question: 'Quelles sont les conditions pour divorcer au Maroc?',
          answer: 'Le divorce au Maroc est régi par le Code de la famille...',
        ),
        FAQItem(
          question: 'Comment faire une demande de pension alimentaire?',
          answer:
              'La demande de pension alimentaire se fait auprès du tribunal...',
        ),
      ],
    ),
    FAQCategory(
      title: 'Droit du Travail',
      questions: [
        FAQItem(
          question: 'Quel est le délai de préavis pour un licenciement?',
          answer: 'Le délai de préavis dépend de l\'ancienneté du salarié...',
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FAQ Juridique')),
      body: ListView.builder(
        itemCount: _categories.length,
        itemBuilder: (context, index) {
          final category = _categories[index];
          return ExpansionTile(
            title: Text(category.title),
            children:
                category.questions.map((faq) {
                  return ExpansionTile(
                    title: Text(faq.question),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(faq.answer),
                      ),
                    ],
                  );
                }).toList(),
          );
        },
      ),
    );
  }
}
