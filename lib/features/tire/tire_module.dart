import 'dart:io';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:prolog_app/features/tire/data/datasources/tire_datasource.dart';
import 'package:prolog_app/features/tire/data/datasources/tire_datasource_implementation.dart';
import 'package:prolog_app/features/tire/data/repositories/tire_repository_implementation.dart';
import 'package:prolog_app/features/tire/domain/repositories/tire_repository.dart';
import 'package:prolog_app/features/tire/domain/usecases/tire_usecases.dart';
import 'package:prolog_app/features/tire/presentation/pages/tire_details_page.dart';
import 'package:prolog_app/features/tire/presentation/pages/tire_page.dart';
import 'package:prolog_app/features/tire/presentation/stores/tire_store.dart';

class TireModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<HttpClient>(HttpClient.new);
    i.addSingleton<TireStore>(TireStore.new);
    i.addSingleton<TireUseCases>(TireUseCases.new);
    i.addSingleton<ITireRepository>(TireRepositoryImplementation.new);
    i.addSingleton<ITireDataSource>(TireDataSourceImplementation.new);
  }

  @override
  void routes(r) {
    r.child(
      Modular.initialRoute,
      child: (context) => TirePage(
        controller: Modular.get<TireStore>(),
      ),
    );
    r.child(
      '/tire_details',
      child: (context) => TireDetailsPage(
        id: r.args.data,
        controller: Modular.get<TireStore>(),
      ),
    );
  }
}
