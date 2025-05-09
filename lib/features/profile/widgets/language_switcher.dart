import 'package:app1/app/localization.dart';
import 'package:flutter/material.dart';


class LanguageSwitcher extends StatelessWidget {
  const LanguageSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return ListTile(
      leading: const Icon(Icons.language),
      title: Text(localizations.languageSelection), // Using an existing property from AppLocalizations
      trailing: DropdownButton<String>(
        value: 'en', // Set the current language
        onChanged: (String? newValue) {
          // Language change logic
        },
        items:
            <String>['en', 'fr', 'ar'].map<DropdownMenuItem<String>>((
              String value,
            ) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value.toUpperCase()),
              );
            }).toList(),
      ),
    );
  }
}
