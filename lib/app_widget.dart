import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      title: 'prologApp',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Color(0xFFA1B5FF),
          ),
          backgroundColor: Color(0xFF1B244C),
          elevation: 0,
        ),
        primaryColor: const Color(0xFF1B244C),
        secondaryHeaderColor: const Color(0xFF5579FF),
      ),
      supportedLocales: const [
        Locale('pt', 'BR'),
      ],
    );
  }
}
