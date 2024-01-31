import 'package:prolog_app/features/tire/data/datasources/tire_datasource.dart';
import 'package:prolog_app/features/tire/domain/entities/tire_entity.dart';
import 'package:prolog_app/features/tire/domain/repositories/tire_repository.dart';

class TireRepositoryImplementation implements ITireRepository {
  final ITireDataSource tireDataSource;

  TireRepositoryImplementation({required this.tireDataSource});

  @override
  Future<List<TireEntity>> getAllTires() {
    return tireDataSource.getAllTires();
  }

  @override
  Future<TireEntity> getTireById({required int id}) {
    return tireDataSource.getTireById(id: id);
  }
}
