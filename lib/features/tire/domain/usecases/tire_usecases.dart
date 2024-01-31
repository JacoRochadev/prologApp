import 'package:dartz/dartz.dart';
import 'package:prolog_app/features/tire/domain/entities/tire_entity.dart';
import 'package:prolog_app/features/tire/domain/repositories/tire_repository.dart';

class TireUseCases {
  final ITireRepository _repository;

  TireUseCases(this._repository);

  Future<Either<String, List<TireEntity>>> getAllTires({
    required int branchOfficesId,
    required int pageSize,
    required int pageNumber,
  }) async {
    return await _repository.getAllTires(
      branchOfficesId: branchOfficesId,
      pageSize: pageSize,
      pageNumber: pageNumber,
    );
  }

  Future<TireEntity> getTireById({
    required int id,
  }) async {
    return await _repository.getTireById(id: id);
  }
}
