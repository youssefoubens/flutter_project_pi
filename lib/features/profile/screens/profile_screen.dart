import 'package:app1/app/localization.dart';
import 'package:flutter/material.dart';

import '../widgets/language_switcher.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(localizations.profile)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile_placeholder.png'),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              localizations.personalInfo,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('Mohamed Amine'),
              subtitle: Text('Utilisateur'),
            ),
            const ListTile(
              leading: Icon(Icons.email),
              title: Text('contact@example.com'),
            ),
            const Divider(),
            Text(
              localizations.settings,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SwitchListTile(
              title: Text(localizations.darkMode),
              value: Theme.of(context).brightness == Brightness.dark,
              onChanged: (value) {
                // Toggle theme
              },
            ),
            const LanguageSwitcher(),
            const Spacer(),
            Center(
              child: TextButton(
                onPressed: () {
                  // Logout logic
                },
                child: Text(localizations.logout),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
