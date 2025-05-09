
import 'package:flutter/material.dart';
import '../../../shared/widgets/app_button.dart';
import '../../../shared/widgets/app_text_field.dart';

class AuthForm extends StatefulWidget {
  final bool isLogin;
  
  const AuthForm({super.key, required this.isLogin});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          if (!widget.isLogin)
            AppTextField(
              controller: _nameController,
              labelText: 'Nom complet',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer votre nom';
                }
                return null;
              },
            ),
          const SizedBox(height: 16),
          AppTextField(
            controller: _emailController,
            labelText: 'Email',
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Veuillez entrer votre email';
              }
              if (!value.contains('@')) {
                return 'Email invalide';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          AppTextField(
            controller: _passwordController,
            labelText: 'Mot de passe',
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Veuillez entrer votre mot de passe';
              }
              if (value.length < 6) {
                return 'Le mot de passe doit contenir au moins 6 caractères';
              }
              return null;
            },
          ),
          const SizedBox(height: 24),
          AppButton(
            text: widget.isLogin ? 'Se connecter' : 'S\'inscrire',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Simulate authentication
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const Scaffold(body: Center(child: Text('Dashboard youssef')))),
                );
              }
            },
          ),
          TextButton(
            onPressed: () {
              // Navigate to signup/login
            },
            child: Text(
              widget.isLogin 
                ? 'Pas de compte? Créer un compte'
                : 'Déjà un compte? Se connecter',
            ),
          ),
        ],
      ),
    );
  }
}