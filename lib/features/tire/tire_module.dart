import 'package:flutter_modular/flutter_modular.dart';
import 'package:prolog_app/features/tire/presentation/pages/tire_details_page.dart';
import 'package:prolog_app/features/tire/presentation/pages/tire_page.dart';

class TireModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(
      Modular.initialRoute,
      child: (context) => const TirePage(),
    );
    r.child(
      '/tire_details',
      child: (context) => const TireDetailsPage(),
    );
  }
}
