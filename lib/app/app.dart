import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../features/auth/screens/login_screen.dart';
import '../features/dashboard/dashboard_screen.dart';
import 'app_settings_provider.dart';
import 'theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'localization.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => AppSettingsProvider(),
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppSettingsProvider>(
      builder: (context, settings, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'SmartLegal Maroc',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: settings.themeMode,
          locale: settings.locale,
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
          home: const LoginScreen(),
        );
      },
    );
  }
}
