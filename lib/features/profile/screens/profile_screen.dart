import 'package:app1/app/app_settings_provider.dart';
import 'package:app1/app/localization.dart';
import 'package:app1/features/auth/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/language_switcher.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final settings = Provider.of<AppSettingsProvider>(context);

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
                child: Icon(Icons.person, size: 50),
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
              value: settings.themeMode == ThemeMode.dark,
              onChanged: (value) {
                settings.setThemeMode(value ? ThemeMode.dark : ThemeMode.light);
              },
            ),
            const LanguageSwitcher(),
            const Spacer(),
            Center(
              child: TextButton.icon(
                onPressed: () {
                  // Logout logic
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const LoginScreen()),
                    (route) => false,
                  );
                },
                icon: const Icon(Icons.logout),
                label: Text(localizations.logout),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
