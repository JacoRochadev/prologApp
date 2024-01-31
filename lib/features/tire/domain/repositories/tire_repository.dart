import 'package:dartz/dartz.dart';
import 'package:prolog_app/features/tire/domain/entities/tire_entity.dart';

abstract class ITireRepository {
  Future<Either<String, List<TireEntity>>> getAllTires({
    required int branchOfficesId,
    required int pageSize,
    required int pageNumber,
  });
  Future<TireEntity> getTireById({
    required int id,
  });
}
