// document_selection.dart
import 'package:flutter/material.dart';
import 'document_form.dart';

import '../models/document_template.dart';

class DocumentSelectionScreen extends StatelessWidget {
  const DocumentSelectionScreen({super.key});

  static final List<DocumentTemplate> _documents = [
    DocumentTemplate(
      id: '1',
      title: 'Contrat de Location',
      description: 'Générer un contrat de location conforme à la loi marocaine',
      icon: Icons.home, templatePath: '',
    ),
    DocumentTemplate(
      id: '2',
      title: 'Demande de Passeport',
      description: 'Formulaire de demande de passeport marocain',
      icon: Icons.airplane_ticket, templatePath: '',
    ),
    DocumentTemplate(
      id: '3',
      title: 'Plainte',
      description: 'Rédiger une plainte pour déposer au commissariat',
      icon: Icons.gavel, templatePath: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Générer un Document')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: _documents.length,
        itemBuilder: (context, index) {
          final doc = _documents[index];
          return Card(
            child: ListTile(
              leading: Icon(doc.icon),
              title: Text(doc.title),
              subtitle: Text(doc.description),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DocumentFormScreen(template: doc),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

// document_form.dart
