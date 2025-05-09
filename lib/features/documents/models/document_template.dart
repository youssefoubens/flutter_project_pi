// document_template.dart
import 'package:flutter/src/widgets/icon_data.dart';

class DocumentTemplate {
  final String id;
  final String title;
  final String description;
  final String templatePath;

  DocumentTemplate({
    required this.id,
    required this.title,
    required this.description,
    required this.templatePath, required IconData icon,
  });

  IconData? get icon => null;
}
