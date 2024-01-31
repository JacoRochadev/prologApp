import 'package:prolog_app/features/tire/domain/entities/tire_entity.dart';

abstract class ITireRepository {
  Future<List<TireEntity>> getAllTires();
  Future<TireEntity> getTireById({
    required int id,
  });
}
