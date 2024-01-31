import 'package:prolog_app/features/tire/domain/entities/tire_entity.dart';
import 'package:prolog_app/features/tire/domain/repositories/tire_repository.dart';

class TireUseCases {
  final ITireRepository _repository;

  TireUseCases(this._repository);

  Future<List<TireEntity>> getAllTires() async {
    return await _repository.getAllTires();
  }

  Future<TireEntity> getTireById({
    required int id,
  }) async {
    return await _repository.getTireById(id: id);
  }
}
