import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:prolog_app/core/services/dio_service/dio_service.dart';
import 'package:prolog_app/features/tire/data/datasources/tire_datasource_implementation.dart';
import 'package:prolog_app/features/tire/domain/entities/tire_details_entity.dart';
import 'package:prolog_app/features/tire/domain/entities/tire_entity.dart';

void main() {
  DioService dioServiceTire = DioService();
  final datasource = TireDataSourceImplementation(dioServiceTire);
  test(
      'return tires from the list on page 1 with 10 results in getAllTires ...',
      () async {
    // arrange
    Either<String, List<TireEntity>> response;
    // act
    response = await datasource.getAllTires(
      branchOfficesId: 215,
      pageSize: 10,
      pageNumber: 1,
    );
    // assert
    expect(response.isRight(), true);
  });

  test('return a specific tire by ID in getTireById ...', () async {
    // arrange
    Either<String, TireDetailsEntity> response;
    // act
    response = await datasource.getTireById(
      id: 1,
    );
    // assert
    expect(response.isRight(), true);
  });
}
