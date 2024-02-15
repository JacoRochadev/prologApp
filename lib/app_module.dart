import 'package:flutter_modular/flutter_modular.dart';
import 'package:prolog_app/features/tire/tire_module.dart';
import 'package:prolog_app/shared/view/splash_page.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(
      Modular.initialRoute,
      child: (context) => const SplashPage(),
    );

    r.module(
      '/tire/',
      module: TireModule(),
    );
  }
}
