import 'package:app1/app/theme.dart';
import 'package:app1/app/app_settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'app/app.dart';
import 'app/localization.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => AppSettingsProvider(),
      child: const App(),
    ),
  );
}

class SmartLegalApp extends StatelessWidget {
  const SmartLegalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SmartLegal Maroc',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English as fallback
        Locale('fr', ''), // French
        Locale('ar', ''), // Arabic
      ],
      home: const App(),
    );
  }
}
