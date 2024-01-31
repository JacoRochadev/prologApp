import 'package:dartz/dartz.dart';
import 'package:prolog_app/features/tire/data/datasources/tire_datasource.dart';
import 'package:prolog_app/features/tire/domain/entities/tire_entity.dart';
import 'package:prolog_app/features/tire/domain/repositories/tire_repository.dart';

class TireRepositoryImplementation implements ITireRepository {
  final ITireDataSource tireDataSource;

  TireRepositoryImplementation({required this.tireDataSource});

  @override
  Future<Either<String, List<TireEntity>>> getAllTires({
    required int branchOfficesId,
    required int pageSize,
    required int pageNumber,
  }) {
    return tireDataSource.getAllTires(
      branchOfficesId: branchOfficesId,
      pageSize: pageSize,
      pageNumber: pageNumber,
    );
  }

  @override
  Future<TireEntity> getTireById({required int id}) {
    return tireDataSource.getTireById(id: id);
  }
}
