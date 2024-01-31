import 'package:flutter_modular/flutter_modular.dart';
import 'package:prolog_app/features/tire/presentation/pages/tire_page.dart';
import 'package:prolog_app/features/tire/tire_module.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(
      Modular.initialRoute,
      child: (context) => const TirePage(),
    );

    r.module(
      '/tire/',
      module: TireModule(),
    );
  }
}
