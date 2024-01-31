import 'package:prolog_app/features/tire/domain/entities/tire_entity.dart';

abstract class ITireDataSource {
  Future<List<TireEntity>> getAllTires();
  Future<TireEntity> getTireById({
    required int id,
  });
}
