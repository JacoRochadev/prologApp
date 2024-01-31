import 'package:dartz/dartz.dart';
import 'package:prolog_app/features/tire/domain/entities/tire_details_entity.dart';
import 'package:prolog_app/features/tire/domain/entities/tire_entity.dart';

abstract class ITireDataSource {
  Future<Either<String, List<TireEntity>>> getAllTires({
    required int branchOfficesId,
    required int pageSize,
    required int pageNumber,
  });
  Future<Either<String, TireDetailsEntity>> getTireById({
    required int id,
  });
}
