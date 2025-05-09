import 'package:app1/app/localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app1/app/app_settings_provider.dart';

class LanguageSwitcher extends StatelessWidget {
  const LanguageSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final settings = Provider.of<AppSettingsProvider>(context);
    final currentLocale = settings.locale.languageCode;

    return ListTile(
      leading: const Icon(Icons.language),
      title: Text(localizations.language ?? 'Language'),
      trailing: DropdownButton<String>(
        value: currentLocale,
        onChanged: (String? newValue) {
          if (newValue != null) {
            settings.setLocale(Locale(newValue));
          }
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

extension on AppLocalizations {
  String? get language => null;
}
