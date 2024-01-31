import 'package:flutter_modular/flutter_modular.dart';
import 'package:prolog_app/features/wheel/presentation/pages/wheel_page.dart';
import 'package:prolog_app/features/wheel/wheel_module.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(
      Modular.initialRoute,
      child: (context) => const WheelPage(),
    );

    r.module(
      '/wheel/',
      module: WheelModule(),
    );
  }
}
