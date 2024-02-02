import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

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
        fontFamily: GoogleFonts.prompt().fontFamily,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: Color(0xFF2E3D80),
        ),
        primaryColor: const Color(0xFF2E3D80),
        secondaryHeaderColor: const Color(0xFF7A97FF),
      ),
      supportedLocales: const [
        Locale('pt', 'BR'),
      ],
    );
  }
}
