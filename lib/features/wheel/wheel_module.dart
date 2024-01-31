import 'package:flutter_modular/flutter_modular.dart';
import 'package:prolog_app/features/wheel/presentation/pages/wheel_details_page.dart';
import 'package:prolog_app/features/wheel/presentation/pages/wheel_page.dart';

class WheelModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(
      Modular.initialRoute,
      child: (context) => const WheelPage(),
    );
    r.child(
      '/wheel_details',
      child: (context) => const WheelDetailsPage(),
    );
  }
}
