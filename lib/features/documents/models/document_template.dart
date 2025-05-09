// document_template.dart
import 'package:flutter/material.dart';

class DocumentTemplate {
  final String id;
  final String title;
  final String description;
  final String templatePath;
  final IconData icon;

  DocumentTemplate({
    required this.id,
    required this.title,
    required this.description,
    required this.templatePath,
    required this.icon,
  });
}
