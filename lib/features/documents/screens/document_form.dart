// document_form.dart
import 'package:app1/shared/widgets/app_text_field.dart';
import 'package:flutter/material.dart';


import '../models/document_template.dart';

class DocumentFormScreen extends StatefulWidget {
  final DocumentTemplate template;

  const DocumentFormScreen({super.key, required this.template});

  @override
  State<DocumentFormScreen> createState() => _DocumentFormScreenState();
}

class _DocumentFormScreenState extends State<DocumentFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final Map<String, String> _formData = {};
  int _currentStep = 0;

  List<Step> _buildSteps() {
    return [
      Step(
        title: const Text('Informations Personnelles'),
        content: Column(
          children: [
            AppTextField(
              labelText: 'Nom Complet',
              onSaved: (value) => _formData['fullName'] = value ?? '',
            ),
            AppTextField(
              labelText: 'CIN',
              onSaved: (value) => _formData['cin'] = value ?? '',
            ),
            AppTextField(
              labelText: 'Adresse',
              onSaved: (value) => _formData['address'] = value ?? '',
            ),
          ],
        ),
      ),
      Step(
        title: const Text('Détails du Document'),
        content: Column(
          children: [
            AppTextField(
              labelText: 'Date',
              onSaved: (value) => _formData['date'] = value ?? '',
            ),
            AppTextField(
              labelText: 'Lieu',
              onSaved: (value) => _formData['place'] = value ?? '',
            ),
            if (widget.template.id == '1')
              AppTextField(
                labelText: 'Adresse du Bien',
                onSaved: (value) => _formData['propertyAddress'] = value ?? '',
              ),
          ],
        ),
      ),
      Step(
        title: const Text('Confirmation'),
        content: Column(
          children: [
            Text('Vérifiez les informations avant de générer le document'),
            // Show summary of entered data
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.template.title)),
      body: Form(
        key: _formKey,
        child: Stepper(
          currentStep: _currentStep,
          steps: _buildSteps(),
          onStepContinue: () {
            if (_currentStep < _buildSteps().length - 1) {
              setState(() => _currentStep++);
            } else {
              _formKey.currentState!.save();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DocumentPreviewScreen(
                    template: widget.template,
                    formData: _formData,
                  ),
                ),
              );
            }
          },
          onStepCancel: () {
            if (_currentStep > 0) {
              setState(() => _currentStep--);
            }
          },
        ),
      ),
    );
  }
}

class DocumentPreviewScreen extends StatelessWidget {
  final DocumentTemplate template;
  final Map<String, String> formData;

  const DocumentPreviewScreen({
    super.key,
    required this.template,
    required this.formData,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aperçu du Document'),
        actions: [
          IconButton(
            icon: const Icon(Icons.download),
            onPressed: () {
              // TODO: Implement document download/generation
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Document généré avec succès')),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              template.title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 24),
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: _buildDocumentPreview(),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {
                // TODO: Implement document generation
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Document généré avec succès')),
                );
              },
              icon: const Icon(Icons.file_download),
              label: const Text('Générer le Document'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDocumentPreview() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Nom: ${formData['fullName'] ?? 'N/A'}'),
        const SizedBox(height: 8),
        Text('CIN: ${formData['cin'] ?? 'N/A'}'),
        const SizedBox(height: 8),
        Text('Adresse: ${formData['address'] ?? 'N/A'}'),
        const SizedBox(height: 8),
        Text('Date: ${formData['date'] ?? 'N/A'}'),
        const SizedBox(height: 8),
        Text('Lieu: ${formData['place'] ?? 'N/A'}'),
        if (template.id == '1') ...[
          const SizedBox(height: 8),
          Text('Adresse du Bien: ${formData['propertyAddress'] ?? 'N/A'}'),
        ],
        const SizedBox(height: 16),
        const Text(
          'Ce document est un aperçu. Le document final sera généré au format PDF.',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}

